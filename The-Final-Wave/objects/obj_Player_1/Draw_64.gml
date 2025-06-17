if (room == rm_game_room_1_player || room == rm_game_room_2_player) {
    // Ammo Display
    var offset_x = 0;
    var draw_x = offset_x + 32;
    var draw_y = 32;

    draw_sprite(spr_Bullet_Up, 0, draw_x, draw_y);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(draw_x + 20, draw_y, string(ammo) + " | " + string(ammo_reserve));

    // Money Display
    if (!variable_global_exists("score")) {
        global.score = 0;
    }

    var draw_x = view_xport[0] + 28;
    var draw_y = 64;

    draw_sprite(spr_money, global.money, draw_x, draw_y);
    draw_text(draw_x + 30, draw_y + sprite_get_height(spr_money) * 0.5, string(global.money));
}
