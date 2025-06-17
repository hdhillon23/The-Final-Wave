// Get references to both players
var p1 = instance_exists(obj_Player_1) ? obj_Player_1 : noone;
var p2 = instance_exists(obj_Player_2) ? obj_Player_2 : noone;

var target = noone;
var min_dist = 100000; // some large number

if (p1 != noone) {
    var dist1 = point_distance(x, y, p1.x, p1.y);
    if (dist1 < min_dist) {
        min_dist = dist1;
        target = p1;
    }
}

if (p2 != noone) {
    var dist2 = point_distance(x, y, p2.x, p2.y);
    if (dist2 < min_dist) {
        min_dist = dist2;
        target = p2;
    }
}

var follow_range = 1000; // adjust to your liking

if (target != noone && min_dist < follow_range) {
    move_towards_point(target.x, target.y, 2); // enemy moves toward closest player
} else {
    speed = 0; // optional: enemy stops if no player is nearby
}
