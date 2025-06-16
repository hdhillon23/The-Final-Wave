if (!can_spawn && global.score >= 0) {
    can_spawn = true;
    spawn_timer = room_speed * 5;
}

if (can_spawn) {
    spawn_timer--;

    if (spawn_timer <= 0) {
        instance_create_layer(x, y, "Instances", obj_Normal_Zombie); 
        spawn_timer = room_speed * 10;
    }
}
