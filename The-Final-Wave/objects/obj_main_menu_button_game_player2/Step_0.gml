if (room == rm_game_room_2_player) {
	var view_index = 1; // For Player 2's camera/view
	var cam = view_get_camera(view_index);

	// Camera position and width
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var cam_w = camera_get_view_width(cam);

	// Anchor to top-right of Player 2’s view
	x = cam_x + cam_w - sprite_width - 10;
	y = cam_y + 10;
}
