// Apply movement first
var temp_hspeed = 0;
var temp_vspeed = 0; // Vertical movement variable

// Horizontal movement
if (keyboard_check(ord("D"))) {
    temp_hspeed = 4;
    sprite_index = spr_Player_1_Right;
    last_direction = 1;
} else if (keyboard_check(ord("A"))) {
    temp_hspeed = -4;
    sprite_index = spr_Player_1_Left;
    last_direction = -1;
} else {
    temp_hspeed = 0;
    if (last_direction == 1) sprite_index = spr_Player_1_Right_Idle;
    else if (last_direction == -1) sprite_index = spr_Player_1_Left_Idle;
}

// Vertical movement
if (keyboard_check(ord("W"))) {
    temp_vspeed = -4;
    sprite_index = spr_Player_1_Up;
    last_direction = 2;
} else if (keyboard_check(ord("S"))) {
    temp_vspeed = 4;
    sprite_index = spr_Player_1_Down;
    last_direction = -2;
} else {
    temp_vspeed = 0;
    if (last_direction == 2) sprite_index = spr_Player_1_Up_Idle;
    else if (last_direction == -2) sprite_index = spr_Player_1_Down_Idle;
}

// Only apply movement if the position is free
if (place_free(x + temp_hspeed, y)) hspeed = temp_hspeed;
if (place_free(x, y + temp_vspeed)) vspeed = temp_vspeed;

// Move the player
x += hspeed;
y += vspeed;

// Face weapon according to direction
if (instance_exists(weapon_instance)) {
    switch (last_direction) {
        case 1: // Right
            weapon_instance.x = 40 + 10;
            weapon_instance.y = 60 + 2;
            weapon_instance.image_angle = 0;
            weapon_instance.image_xscale = 1;
            break;
        case -1: // Left
            weapon_instance.x = 58 - 10;
            weapon_instance.y = 61 + 2;
            weapon_instance.image_angle = 0;
            weapon_instance.image_xscale = -1;
            break;
        case 2: // Up
            weapon_instance.x = 63 - 8; // Moved left
            weapon_instance.y = 63 - 12;
            weapon_instance.image_angle = 90;
            weapon_instance.image_xscale = -1;
            break;
        case -2: // Down
            weapon_instance.x = 63 + 8; // Moved right
            weapon_instance.y = 63 + 12;
            weapon_instance.image_angle = 270;
            weapon_instance.image_xscale = 1;
            break;
    }
}



// Shooting with auto-reload
if (keyboard_check_pressed(ord("G"))) {
    if (!is_reloading && ammo > 0) {
        ammo -= 1;
		audio_play_sound(snd_Shooting, 1, false);

        var bx = x;
        var by = y;

        switch (last_direction) {
            case 1:  bx += 16; instance_create_layer(bx, by, "Instances", obj_Bullet_Right); break;
            case -1: bx -= 16; instance_create_layer(bx, by, "Instances", obj_Bullet_Left); break;
            case 2:  by -= 16; instance_create_layer(bx, by, "Instances", obj_Bullet_Up); break;
            case -2: by += 16; instance_create_layer(bx, by, "Instances", obj_Bullet_Down); break;
        }

    } else if (!is_reloading && ammo <= 0 && ammo_reserve > 0) {
        is_reloading = true;
        reload_timer = 120; // 2 seconds
		audio_play_sound(snd_Reload_Effect, 1, false);
    }
}

// 🔁 Reload timer countdown (this was missing!)
if (is_reloading) {
    reload_timer -= 1;
    if (reload_timer <= 0) {
        var needed = max_ammo - ammo;
        var to_reload = min(needed, ammo_reserve);
        ammo += to_reload;
        ammo_reserve -= to_reload;
        is_reloading = false;
    }
}

// Ammo Station Refill
if (place_meeting(x, y, obj_Ammo_Station) && keyboard_check_pressed(ord("T"))) {
    if (global.money >= 30) {
        ammo_reserve += 30;
        audio_play_sound(snd_Ammo_Refill, 1, false);
        global.money -= 30;
    } else {
        show_message("Not enough money.");
    }
}

// Health Station Refill
if (place_meeting(x, y, obj_Health_Station) && keyboard_check_pressed(ord("T"))) {
    if (global.money >= 100) {
        current_health = 100;
        audio_play_sound(snd_Health_Refill, 1, false);
        global.money -= 100;
    } else {
        show_message("Not enough money.");
    }
}

// Health regeneration every 25 seconds
regen_timer++;

if (regen_timer >= regen_interval) {
    if (current_health < max_health) {
        current_health = min(current_health + regen_amount, max_health);
    }
    regen_timer = 0;
}




