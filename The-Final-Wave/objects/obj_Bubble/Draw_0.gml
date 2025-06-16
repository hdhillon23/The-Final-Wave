draw_self();

if (place_meeting(x, y, obj_Player_1)) {
  draw_text(x + 150, y -20,"Press T" + name + " - $" + string(price));
}
else if (place_meeting(x, y, obj_Player_2)) {
    draw_text(x + 150, y - 20,"Press P" + name + " - $" + string(price));
}


