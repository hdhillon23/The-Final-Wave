/// @description Camera Data
playerList[0] = obj_Player_1;
playerList[1] = obj_Player_2;

view_enabled = true;

var width = 1000, height = 500, scale = 1.75;

global.Cameras = [];
global.cameraWidth = width / array_length_1d(playerList);

for (var i = 0; i < array_length_1d(playerList); ++i) {
    view_visible[i] = true;
    
    // Create Camera
    global.Cameras[i] = camera_create_view(0, 0, global.cameraWidth, height, 0, playerList[i], -1, -1, global.cameraWidth, height);
    view_set_camera(i, global.Cameras[i]);
    
    // Viewport
    view_xport[i] = global.cameraWidth * i;
    view_wport[i] = global.cameraWidth;
}

window_set_size(width * scale, height * scale);
surface_resize(application_surface, width * scale, height * scale);

