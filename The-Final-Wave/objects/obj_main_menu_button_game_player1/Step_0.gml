if (room == rm_game_room_1_player) {
	var cam = view_get_camera(0);

	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var cam_w = camera_get_view_width(cam);

	x = cam_x + cam_w - sprite_width - 10;
	y = cam_y + 10;
}