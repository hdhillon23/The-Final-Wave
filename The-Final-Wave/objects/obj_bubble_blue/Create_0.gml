
owner_id = noone;
owner_id_p = noone;


alarm[0] = 60 * 10;


if (instance_exists(owner_id)) {
    depth = owner_id.depth + 10;
}
else if (instance_exists(obj_Player_2)) {
    depth = obj_Player_2.depth + 10;
}
else if (instance_exists(obj_Player_1)) {
    depth = obj_Player_1.depth + 10;
}
else {
    depth = 0; 
}
