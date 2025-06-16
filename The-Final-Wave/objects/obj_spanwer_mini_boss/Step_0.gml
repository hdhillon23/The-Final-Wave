if (!can_spawn && global.score >= 150) {
    can_spawn = true;
    spawn_timer = room_speed * 90;
}

if (can_spawn) {
    spawn_timer--;

    if (spawn_timer <= 0) {
        instance_create_layer(x, y, "Instances", obj_Mini_Boss); 
        spawn_timer = room_speed * 90;
    }
}
