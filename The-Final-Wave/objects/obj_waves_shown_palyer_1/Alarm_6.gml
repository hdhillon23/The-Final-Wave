if (instance_exists(global.wave_4_in_id)) {
    instance_destroy(global.wave_4_in_id);
}
global.wave_4_phase = 2;
global.wave_4_timer = 5 * room_speed; // Start 5-second delay before real wave
