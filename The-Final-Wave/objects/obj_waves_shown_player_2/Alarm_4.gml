if (instance_exists(global.wave_3_in_id_p2)) {
    instance_destroy(global.wave_3_in_id_p2);
}
global.wave_3_phase_p2 = 2;
global.wave_3_timer_p2 = 5 * room_speed;