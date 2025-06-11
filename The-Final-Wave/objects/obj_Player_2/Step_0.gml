// Apply movement first
var temp_hspeed = 0;
var temp_vspeed = 0; // Vertical movement variable

// Horizontal movement
if (keyboard_check(vk_right)) 
{
    temp_hspeed = 5;
    sprite_index = spr_Player_2_Right;
    last_direction = 1;
}
else if (keyboard_check(vk_left))
{
    temp_hspeed = -5;
    sprite_index = spr_Player_2_Left;
    last_direction = -1;
}
else 
{
    temp_hspeed = 0;

    // Set idle sprite for horizontal directions
    if (last_direction == 1) sprite_index = spr_Player_2_Right_Idle;
    else if (last_direction == -1) sprite_index = spr_Player_2_Left_Idle;
}

// Vertical movement
if (keyboard_check(vk_up)) 
{
    temp_vspeed = -5; // Move up
    sprite_index = spr_Player_2_Up;
    last_direction = 2;
}
else if (keyboard_check(vk_down)) 
{
    temp_vspeed = 5; // Move down
    sprite_index = spr_Player_2_Down;
    last_direction = -2;
}
else 
{
    temp_vspeed = 0;

    // Set idle sprite for vertical directions
    if (last_direction == 2) sprite_index = spr_Player_2_Up_Idle;
    else if (last_direction == -2) sprite_index = spr_Player_2_Down_Idle;
}

// Only apply movement if the position is free
if (place_free(x + temp_hspeed, y)) 
{
    hspeed = temp_hspeed;
}
if (place_free(x, y + temp_vspeed)) 
{
    vspeed = temp_vspeed;
}

// Move the player
x += hspeed;
y += vspeed;

//Set the Weapons position to follow the player
obj_Start_Weapon.x = x;
obj_Start_Weapon.y = y;