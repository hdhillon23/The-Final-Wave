if (variable_global_exists("following_wave") && instance_exists(global.following_wave_2) && instance_exists(obj_Player_1)) {
    global.following_wave_2.x = obj_Player_2.x - 75;
    global.following_wave_2.y = obj_Player_2.y - 250;
}

/////////////////////////////////////////////////////////////////

// Wave 2
	if (score == 2 && global.wave_2_phase_p2 == 0) {
	    global.wave_2_in_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_2_in);
	    global.wave_2_phase_p2 = 1;
	    alarm[2] = 5 * room_speed; // shared alarm
	}
	if (global.wave_2_phase_p2 == 2) {
	    global.wave_2_timer_p2 -= 1;
	    if (global.wave_2_timer_p2 <= 0) {
	        global.wave_2_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_2);
	        global.wave_2_phase_p2 = 3;
	        alarm[3] = 5 * room_speed; // shared alarm
	    }
	}
	if (global.wave_2_phase_p2 == 1 && instance_exists(global.wave_2_in_id_p2) && instance_exists(obj_Player_2)) {
	    global.wave_2_in_id_p2.x = obj_Player_2.x - 75;
	    global.wave_2_in_id_p2.y = obj_Player_2.y - 250;
	}
	if (global.wave_2_phase_p2 == 3 && instance_exists(global.wave_2_id_p2) && instance_exists(obj_Player_2)) {
	    global.wave_2_id_p2.x = obj_Player_2.x - 75;
	    global.wave_2_id_p2.y = obj_Player_2.y - 250;
	}
	
	/////////////////////////////////////////////////////////////////
	
// Wave 3
if (score == 4 && global.wave_3_phase_p2 == 0) {
    global.wave_3_in_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_3_in);
    global.wave_3_phase_p2 = 1;
    alarm[4] = 5 * room_speed; // shared alarm with Player 1
}

if (global.wave_3_phase_p2 == 2) {
    global.wave_3_timer_p2 -= 1;
    if (global.wave_3_timer_p2 <= 0) {
        global.wave_3_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_3);
        global.wave_3_phase_p2 = 3;
        alarm[5] = 5 * room_speed; // shared alarm with Player 1
    }
}

if (global.wave_3_phase_p2 == 1 && instance_exists(global.wave_3_in_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_3_in_id_p2.x = obj_Player_2.x - 75;
    global.wave_3_in_id_p2.y = obj_Player_2.y - 250;
}

if (global.wave_3_phase_p2 == 3 && instance_exists(global.wave_3_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_3_id_p2.x = obj_Player_2.x - 75;
    global.wave_3_id_p2.y = obj_Player_2.y - 250;
}

/////////////////////////////////////////////////////////////////

// Wave 4
if (score == 6 && global.wave_4_phase_p2 == 0) {
    global.wave_4_in_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_4_in);
    global.wave_4_phase_p2 = 1;
    alarm[6] = 5 * room_speed; // shared alarm
}

if (global.wave_4_phase_p2 == 2) {
    global.wave_4_timer_p2 -= 1;
    if (global.wave_4_timer_p2 <= 0) {
        global.wave_4_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_4);
        global.wave_4_phase_p2 = 3;
        alarm[7] = 5 * room_speed; // shared alarm
    }
}

if (global.wave_4_phase_p2 == 1 && instance_exists(global.wave_4_in_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_4_in_id_p2.x = obj_Player_2.x - 75;
    global.wave_4_in_id_p2.y = obj_Player_2.y - 250;
}

if (global.wave_4_phase_p2 == 3 && instance_exists(global.wave_4_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_4_id_p2.x = obj_Player_2.x - 75;
    global.wave_4_id_p2.y = obj_Player_2.y - 250;
}

/////////////////////////////////////////////////////////////////

// Wave 5
if (score == 8 && global.wave_5_phase_p2 == 0) {
    global.wave_5_in_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_5_in);
    global.wave_5_phase_p2 = 1;
    alarm[8] = 5 * room_speed; // shared alarm
}

if (global.wave_5_phase_p2 == 2) {
    global.wave_5_timer_p2 -= 1;
    if (global.wave_5_timer_p2 <= 0) {
        global.wave_5_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_5);
        global.wave_5_phase_p2 = 3;
        alarm[9] = 5 * room_speed; // shared alarm
    }
}

if (global.wave_5_phase_p2 == 1 && instance_exists(global.wave_5_in_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_5_in_id_p2.x = obj_Player_2.x - 75;
    global.wave_5_in_id_p2.y = obj_Player_2.y - 250;
}

if (global.wave_5_phase_p2 == 3 && instance_exists(global.wave_5_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_5_id_p2.x = obj_Player_2.x - 75;
    global.wave_5_id_p2.y = obj_Player_2.y - 250;
}

/////////////////////////////////////////////////////////////////

// Wave 6 - Player 2
if (score == 10 && global.wave_6_phase_p2 == 0) {
    global.wave_6_in_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_6_in);
    global.wave_6_phase_p2 = 1;
    alarm[10] = 5 * room_speed; // shared alarm
}

if (global.wave_6_phase_p2 == 2) {
    global.wave_6_timer_p2 -= 1;
    if (global.wave_6_timer_p2 <= 0) {
        global.wave_6_id_p2 = instance_create_depth(obj_Player_2.x, obj_Player_2.y - 50, 0, obj_wave_6);
        global.wave_6_phase_p2 = 3;
        alarm[11] = 5 * room_speed; // shared alarm
    }
}

if (global.wave_6_phase_p2 == 1 && instance_exists(global.wave_6_in_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_6_in_id_p2.x = obj_Player_2.x - 75;
    global.wave_6_in_id_p2.y = obj_Player_2.y - 250;
}

if (global.wave_6_phase_p2 == 3 && instance_exists(global.wave_6_id_p2) && instance_exists(obj_Player_2)) {
    global.wave_6_id_p2.x = obj_Player_2.x - 75;
    global.wave_6_id_p2.y = obj_Player_2.y - 250;
}
