// Wave 1
if (variable_global_exists("following_wave") && instance_exists(global.following_wave_1) && instance_exists(obj_Player_1)) {
    global.following_wave_1.x = obj_Player_1.x - 75;
    global.following_wave_1.y = obj_Player_1.y - 250;
}

// Wave 2
if (global.score == 2 && global.wave_2_phase == 0) {
    global.wave_2_in_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_2_in);
    global.wave_2_phase = 1;
    alarm[2] = 5 * room_speed;
}
if (global.wave_2_phase == 2) {
    global.wave_2_timer -= 1;
    if (global.wave_2_timer <= 0) {
        global.wave_2_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_2);
        global.wave_2_phase = 3;
        alarm[3] = 5 * room_speed;
    }
}
if (global.wave_2_phase == 1 && instance_exists(global.wave_2_in_id) && instance_exists(obj_Player_1)) {
    global.wave_2_in_id.x = obj_Player_1.x - 75;
    global.wave_2_in_id.y = obj_Player_1.y - 250;
}
if (global.wave_2_phase == 3 && instance_exists(global.wave_2_id) && instance_exists(obj_Player_1)) {
    global.wave_2_id.x = obj_Player_1.x - 75;
    global.wave_2_id.y = obj_Player_1.y - 250;
}

// Wave 3
if (global.score == 4 && global.wave_3_phase == 0) {
    global.wave_3_in_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_3_in);
    global.wave_3_phase = 1;
    alarm[4] = 5 * room_speed;
}
if (global.wave_3_phase == 2) {
    global.wave_3_timer -= 1;
    if (global.wave_3_timer <= 0) {
        global.wave_3_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_3);
        global.wave_3_phase = 3;
        alarm[5] = 5 * room_speed;
    }
}
if (global.wave_3_phase == 1 && instance_exists(global.wave_3_in_id) && instance_exists(obj_Player_1)) {
    global.wave_3_in_id.x = obj_Player_1.x - 75;
    global.wave_3_in_id.y = obj_Player_1.y - 250;
}
if (global.wave_3_phase == 3 && instance_exists(global.wave_3_id) && instance_exists(obj_Player_1)) {
    global.wave_3_id.x = obj_Player_1.x - 75;
    global.wave_3_id.y = obj_Player_1.y - 250;
}

// Wave 4
if (global.score == 6 && global.wave_4_phase == 0) {
    global.wave_4_in_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_4_in);
    global.wave_4_phase = 1;
    alarm[6] = 5 * room_speed;
}
if (global.wave_4_phase == 2) {
    global.wave_4_timer -= 1;
    if (global.wave_4_timer <= 0) {
        global.wave_4_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_4);
        global.wave_4_phase = 3;
        alarm[7] = 5 * room_speed;
    }
}
if (global.wave_4_phase == 1 && instance_exists(global.wave_3_in_id) && instance_exists(obj_Player_1)) {
    global.wave_4_in_id.x = obj_Player_1.x - 75;
    global.wave_4_in_id.y = obj_Player_1.y - 250;
}
if (global.wave_4_phase == 3 && instance_exists(global.wave_3_id) && instance_exists(obj_Player_1)) {
    global.wave_4_id.x = obj_Player_1.x - 75;
    global.wave_4_id.y = obj_Player_1.y - 250;
}

// Wave 5
if (global.score == 8 && global.wave_5_phase == 0) {
    global.wave_5_in_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_5_in);
    global.wave_5_phase = 1;
    alarm[8] = 5 * room_speed;
}
if (global.wave_5_phase == 2) {
    global.wave_5_timer -= 1;
    if (global.wave_5_timer <= 0) {
        global.wave_5_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_5);
        global.wave_5_phase = 3;
        alarm[9] = 5 * room_speed;
    }
}
if (global.wave_5_phase == 1 && instance_exists(global.wave_5_in_id) && instance_exists(obj_Player_1)) {
    global.wave_5_in_id.x = obj_Player_1.x - 75;
    global.wave_5_in_id.y = obj_Player_1.y - 250;
}
if (global.wave_5_phase == 3 && instance_exists(global.wave_5_id) && instance_exists(obj_Player_1)) {
    global.wave_5_id.x = obj_Player_1.x - 75;
    global.wave_5_id.y = obj_Player_1.y - 250;
}

// Wave 6
if (global.score == 10 && global.wave_6_phase == 0) {
    global.wave_6_in_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_6_in);
    global.wave_6_phase = 1;
    alarm[10] = 5 * room_speed;
}
if (global.wave_6_phase == 2) {
    global.wave_6_timer -= 1;
    if (global.wave_6_timer <= 0) {
        global.wave_6_id = instance_create_depth(obj_Player_1.x, obj_Player_1.y - 50, 0, obj_wave_6);
        global.wave_6_phase = 3;
        alarm[11] = 5 * room_speed;
    }
}
if (global.wave_6_phase == 1 && instance_exists(global.wave_6_in_id) && instance_exists(obj_Player_1)) {
    global.wave_6_in_id.x = obj_Player_1.x - 75;
    global.wave_6_in_id.y = obj_Player_1.y - 250;
}
if (global.wave_6_phase == 3 && instance_exists(global.wave_6_id) && instance_exists(obj_Player_1)) {
    global.wave_6_id.x = obj_Player_1.x - 75;
    global.wave_6_id.y = obj_Player_1.y - 250;
}
