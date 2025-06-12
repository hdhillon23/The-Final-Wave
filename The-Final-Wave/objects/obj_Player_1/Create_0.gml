max_health = 100;
health = max_health;

// Initialize last_direction to a default value
last_direction = 1; 
last_direction = -1; 

if (!layer_exists("Instances")) {
    layer_create(-100, "Instances");
}
