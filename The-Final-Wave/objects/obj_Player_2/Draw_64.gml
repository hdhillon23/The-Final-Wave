var offset_x = global.cameraWidth;
var draw_margin = 16;

var draw_x = offset_x + global.cameraWidth - draw_margin;
var draw_y = 32 + 8;

draw_sprite(spr_Bullet_Up, 0, draw_x - 100, draw_y);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(draw_x - 20, draw_y, string(ammo) + " | " + string(ammo_reserve));

// Money
var offset_x = global.cameraWidth;     
var draw_margin = 16;

var draw_x = offset_x + global.cameraWidth - draw_margin;
var draw_y = 64; 

draw_sprite(spr_money, 0, draw_x - 75, draw_y);
draw_text(draw_x - 20, draw_y + sprite_get_height(spr_money) * 0.5, string(global.score));
