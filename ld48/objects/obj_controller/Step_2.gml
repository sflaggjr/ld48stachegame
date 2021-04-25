//Check the state of the game and handle those behaviors
if global.gameState = gState.pause {
	instance_deactivate_all(true);
}

if global.gameState = gState.play {
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	instance_deactivate_all(true);
	instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
}