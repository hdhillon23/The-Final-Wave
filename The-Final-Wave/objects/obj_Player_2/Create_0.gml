health = 100;
max_health = 100;

// Initialize last_direction to a default value
last_direction = 1; 
last_direction = -1; 

if (!layer_exists("Instances")) {
    layer_create(-100, "Instances");
}

weapon_instance = instance_create_layer(x, y, "Instances", obj_Start_Weapon_2);