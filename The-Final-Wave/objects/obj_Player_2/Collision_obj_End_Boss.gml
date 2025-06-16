// Assuming you've declared these variables elsewhere:
// recently_hit = false;
// hit_cooldown = 0;

if (!recently_hit) {
    current_health -= 40;
    current_health = clamp(current_health, 0, max_health);
    recently_hit = true;
   hit_cooldown = 60; // 1 seconds of invincibility
    audio_play_sound(snd_Hit, 1, false);

    if (current_health <= 0) {
        show_message("Game Over!");
        game_restart();
    }

    move_bounce_all(false);
}

// In the Step Event:
if (recently_hit) {
    hit_cooldown--;
    if (hit_cooldown <= 0) {
        recently_hit = false;
    }
}
