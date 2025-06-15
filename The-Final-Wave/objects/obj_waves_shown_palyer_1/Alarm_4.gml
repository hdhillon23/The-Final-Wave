if (instance_exists(global.wave_3_in_id)) {
    instance_destroy(global.wave_3_in_id);
}
global.wave_3_phase = 2;
global.wave_3_timer = 5 * room_speed; // Start 5-second delay before real wave
