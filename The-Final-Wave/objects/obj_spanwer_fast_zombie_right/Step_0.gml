if (!can_spawn && global.score >= 50) {
    can_spawn = true;
    spawn_timer = room_speed * 10;
}

if (can_spawn) {
    spawn_timer--;

    if (spawn_timer <= 0) {
        instance_create_layer(x, y, "Instances", obj_Fast_Zombie_Right); 
        spawn_timer = room_speed * 10;
    }
}
