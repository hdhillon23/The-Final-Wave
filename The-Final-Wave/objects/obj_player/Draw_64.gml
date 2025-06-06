// Draw the object's sprite
draw_self();

// Calculate health percentage
var hp_percent = (health / max_health) * 100;

// Set health bar position above the object
var bar_width = 120;
var bar_height = 12;
var x1 = x - bar_width / 4;
var y1 = y - sprite_height / 2 - 10;
var x2 = x + bar_width / 2;
var y2 = y1 + bar_height;

// Draw the health bar
draw_healthbar(x1, y1, x2, y2, hp_percent, c_black, c_red, c_lime, 0, true, true);
