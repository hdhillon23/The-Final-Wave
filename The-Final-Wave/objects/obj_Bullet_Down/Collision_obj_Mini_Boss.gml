// Bullet hits enemy
other.current_health -= 30; // Adjust damage as needed

// Spawn blood effect
instance_create_layer(x, y, layer, obj_Death_Effect);
audio_play_sound(snd_Death_Effect, 1, false);

// Destroy bullet
instance_destroy();

// If enemy dies
if (other.current_health <= 0) {
    global.score += 20;
    global.money += 20;

    if (global.score > global.high_score) {
        global.high_score = global.score;
    }

    instance_destroy(other); // Enemy goes bye-bye
}
