// Player Health Setup
max_health = 100;
current_health = max_health;

// Ammo System
ammo = 10;           // current magazine
max_ammo = 10;       // max bullets per reload
ammo_reserve = 30;   // reserve pool

is_reloading = false;
reload_timer = 0;

// Direction tracker — just keep one value!
last_direction = 1;  // Default facing right

// Ensure weapon layer exists
if (!layer_exists("Instances")) {
    layer_create(-100, "Instances");
}

// Spawn and equip starting weapon
weapon_instance = instance_create_layer(x, y, "Instances", obj_Start_Weapon_1);
