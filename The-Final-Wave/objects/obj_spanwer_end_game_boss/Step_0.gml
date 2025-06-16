if (!can_spawn && global.score >= 300) {
    can_spawn = true;
    spawn_timer = room_speed * 120;
}

if (can_spawn) {
    spawn_timer--;

    if (spawn_timer <= 0) {
        instance_create_layer(x, y, "Instances", obj_End_Boss); 
        spawn_timer = room_speed * 120;
    }
}
