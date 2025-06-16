current_health -= 5;
health = clamp(health, 0, max_health);
audio_play_sound(snd_Hit, 1, false);

if (health <= 0) {
    // Game over logic
    show_message("Game Over!");
    
    // Restart the game
    room_goto(rm_main_menu) // This will reset the game to its initial state
}

move_bounce_all(false); // Bounce off enemy when hit