for (var i = 0; i < array_length_1d(playerList); ++i) {
    var x_gui = view_xport[i] + 32; // 32 pixels from left of their viewport
    var y_gui = 32;                 // 32 pixels from top

    draw_text(x_gui, y_gui, "Coins: " + string(global.money));
}
