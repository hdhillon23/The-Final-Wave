health -= 10;
health = clamp(health, 0, max_health);

if (health <= 0) {
    // Game over logic
    show_message("Game Over!");
    
    // Restart the game
    room_goto(rm_main_menu) // This will reset the game to its initial state
}

instance_destroy(other); // Destroy enemy