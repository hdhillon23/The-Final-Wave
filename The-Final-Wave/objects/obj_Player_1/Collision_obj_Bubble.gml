if (keyboard_check_pressed(ord("T"))) {
    if (global.money > 250) {
        var aura = instance_create_layer(x + 8, y, "Instances", obj_bubble_blue);
        aura.owner_id_p = id; // Allows it to follow the player
        global.money -= 250;
    } else {
        show_message("Not enough money.");
    }
}
