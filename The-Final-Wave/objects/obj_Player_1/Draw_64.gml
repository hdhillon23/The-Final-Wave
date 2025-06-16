var offset_x = 0;
var draw_x = offset_x + 32;
var draw_y = 32;

draw_sprite(spr_Bullet_Up, 0, draw_x, draw_y);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(draw_x + 20, draw_y, string(ammo) + " | " + string(ammo_reserve));
