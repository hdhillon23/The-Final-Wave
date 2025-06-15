if (variable_global_exists("following_wave") && instance_exists(global.following_wave_2)) {
    with (global.following_wave_2) instance_destroy();
}
