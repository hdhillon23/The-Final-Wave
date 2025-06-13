// Get screen position relative to view
var screen_x = x - camera_get_view_x(view_camera[0]);
var screen_y = y - camera_get_view_y(view_camera[0]);

// Offset below player
var draw_x = screen_x - 16;
var draw_y = screen_y + 40;

// Draw ammo icon and text
draw_sprite(spr_Bullet_Up, 0, draw_x, draw_y);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(draw_x + 20, draw_y, string(ammo) + " | " + string(ammo_reserve));
