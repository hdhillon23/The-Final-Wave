if (variable_global_exists("following_wave") && instance_exists(global.following_wave_1)) {
    with (global.following_wave_1) instance_destroy();
}

