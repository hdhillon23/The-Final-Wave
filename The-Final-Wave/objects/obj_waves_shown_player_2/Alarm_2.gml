if (instance_exists(global.wave_2_in_id_p2)) {
    instance_destroy(global.wave_2_in_id_p2);
}
global.wave_2_phase_p2 = 2;
global.wave_2_timer_p2 = 5 * room_speed; // Start 5-second delay before spawning wave_2
