instance_create_layer(x, y, layer, obj_Death_Effect); // Spawn blood
instance_destroy(); // Destroy bullet

//Death effect sound
audio_play_sound(snd_Death_Effect, 1, false);

// When the player earns points
global.score += 5;
global.money += 5;

if (global.score > global.high_score) {
    global.high_score = global.score;
}

//destory the bullet and enemy
instance_destroy(other); // Destroy zombie
instance_destroy(self) //Destory bullet