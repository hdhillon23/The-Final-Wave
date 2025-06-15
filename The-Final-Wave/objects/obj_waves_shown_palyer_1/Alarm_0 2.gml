if (instance_exists(obj_Player_1)) {
    global.following_wave_1 = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_1);
    alarm[1] = room_speed * 5; // Set up a 5-second timer to destroy the wave
}
