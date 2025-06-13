// Alarm[0] Event in obj_controller
if (instance_exists(obj_Player_1)) {
    global.following_wave = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_1);
}
alarm[1] = 5 * room_speed; // Set another alarm to remove obj_wave_1 after 5 seconds
