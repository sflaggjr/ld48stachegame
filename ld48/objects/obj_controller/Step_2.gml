/// @description Insert description here
// You can write your code in this editor
if GAME_STATE == PLAY {
	if !instance_exists(obj_player) {
		GAME_STATE = GAME_OVER;
	}
}

if GAME_STATE == PAUSE{
	//instance_deactivate_all(true);

	if keyboard_check_pressed(ord("Q")) {
		GAME_STATE = GAME_OVER;
	}
}
else {
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	//instance_deactivate_all(true);
	instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
}
if GAME_STATE == INTRO {

}