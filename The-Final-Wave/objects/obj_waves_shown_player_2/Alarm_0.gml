if (instance_exists(obj_Player_2)) {
    global.following_wave_2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_1);
    alarm[1] = room_speed * 5; // Set up a 5-second timer to destroy the wave
}
