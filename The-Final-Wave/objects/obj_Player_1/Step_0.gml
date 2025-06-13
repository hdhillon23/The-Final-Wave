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

// Set the Weapon's position to follow the player
obj_Start_Weapon.x = x;
obj_Start_Weapon.y = y;


// Shooting with direction-specific bullets
if (keyboard_check_pressed(ord("G"))) {
    var bx = x;
    var by = y;

    switch (last_direction) {
        case 1:  // Right
            bx += 16;
            instance_create_layer(bx, by, "Instances", obj_Bullet_Right);
            break;

        case -1: // Left
            bx -= 16;
            instance_create_layer(bx, by, "Instances", obj_Bullet_Left);
            break;

        case 2:  // Up
            by -= 16;
            instance_create_layer(bx, by, "Instances", obj_Bullet_Up);
            break;

        case -2: // Down
            by += 16;
            instance_create_layer(bx, by, "Instances", obj_Bullet_Down);
            break;
    }
}
