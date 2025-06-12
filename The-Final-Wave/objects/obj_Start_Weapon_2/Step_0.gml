// Check player 2 direction and position relative to player
if (instance_exists(obj_Player_2)) {
    var px = obj_Player_2.x;
    var py = obj_Player_2.y;
    var dir = obj_Player_2.last_direction;

    switch (dir) {
        case 1: // Right
            x = px + 16;
            y = py;
            image_angle = 0;
            image_xscale = 1;
            break;

        case -1: // Left
            x = px - 16;
            y = py;
            image_angle = 0;
            image_xscale = -1;
            break;

        case 2: // Up
            x = px;
            y = py - 16;
            image_angle = 270;
            image_xscale = 1;
            break;

        case -2: // Down
            x = px;
            y = py + 16;
            image_angle = 90;
            image_xscale = 1;
            break;
    }
}