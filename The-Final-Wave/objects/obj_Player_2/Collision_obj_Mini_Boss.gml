// Damage and knockback on enemy collision
current_health -= 25;
current_health = clamp(current_health, 0, max_health);
recently_hit = true;
audio_play_sound(snd_Hit, 1, false);

if (current_health <= 0) {
    show_message("Game Over!");
    game_restart();
}

move_bounce_all(false);
