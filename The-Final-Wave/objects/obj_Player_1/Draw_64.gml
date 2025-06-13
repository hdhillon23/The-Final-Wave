// Convert each player's world coordinates to screen coordinates
var screen_x = camera_get_view_x(view_camera[0]);
var screen_y = camera_get_view_y(view_camera[0]);

// Make sure the health bar is drawn relative to THIS object
var bar_x = x - screen_x - 50;
var bar_y = y - screen_y - 40;

// Health bar dimensions
var bar_width = 100;
var bar_height = 10;

// Draw background bar
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw health portion
var health_percentage = health / max_health;
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * health_percentage), bar_y + bar_height, false);
