draw_self();  // Draw the enemy sprite first

var bar_width = 100;
var bar_height = 4;

var bar_x = x - bar_width / 2;      // Centered horizontally
var bar_y = bbox_top - 8;           // Positioned just above the top of the sprite

// Border of health bar
draw_set_color(c_black);
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

// Fill of health bar
var health_percent = current_health / max_health;
draw_set_color(object_index == obj_Mini_Boss ? c_red : c_lime);
draw_rectangle(bar_x, bar_y, bar_x + (health_percent * bar_width), bar_y + bar_height, false);
