// Check if the player is colliding
if (collision_rectangle(x, y, x+sprite_width, y+sprite_height, obj_Player_1, false, true)) {
    is_active = true;
} else {
    is_active = false;
}