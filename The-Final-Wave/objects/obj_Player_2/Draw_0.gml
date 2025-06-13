// First, draw the player sprite
draw_self();

// Then, draw the health bar above the player
var bar_width = 50;
var bar_height = 4;
var bar_x = x - bar_width / 2;
var bar_y = y - sprite_height / 2 - 12; // Slightly above the head

// Border
draw_set_color(c_black);
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

// Fill based on current health
draw_set_color(object_index == obj_Player_2 ? c_lime : c_red);
draw_rectangle(bar_x, bar_y, bar_x + (current_health / max_health) * bar_width, bar_y + bar_height, false);
