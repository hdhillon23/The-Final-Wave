// Player 1 view anchor (assuming single camera, view[0])
var cam = view_get_camera(0);

// Get camera's position and width
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);

// Position this object at top-right corner with 10px padding
x = cam_x + cam_w - sprite_width - 10;
y = cam_y + 10;
