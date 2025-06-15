// Get the screen position of obj_Player_1
var screen_x = camera_get_view_x(view_camera[0]);
var screen_y = camera_get_view_y(view_camera[0]);

var player_screen_x = obj_Player_1.x - screen_x;
var player_screen_y = obj_Player_1.y - screen_y;

// Offset to draw slightly above the player
var offset_y = 0;

draw_text(player_screen_x, player_screen_y - offset_y, string(floor(time_left)) + "s");
