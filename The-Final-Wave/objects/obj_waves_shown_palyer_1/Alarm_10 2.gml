if (instance_exists(global.wave_6_in_id)) {
    instance_destroy(global.wave_6_in_id);
}
global.wave_6_phase = 2;
global.wave_6_timer = 5 * room_speed; // Start 5-second delay before real wave
