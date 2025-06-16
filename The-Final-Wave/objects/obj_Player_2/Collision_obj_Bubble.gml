if (keyboard_check_pressed(ord("P")) && global.money > 5) {
    var aura = instance_create_layer(x + 8, y, "Instances", obj_bubble_blue);
    aura.owner_id = id; // Allows it to follow the player
	global.money -= 5
}
