// Make obj_wave_1 follow obj_Player_1
if (instance_exists(global.following_wave) && instance_exists(obj_Player_1)) {
    global.following_wave.x = obj_Player_1.x;
    global.following_wave.y = obj_Player_1.y - 250; 
}
