/// @description Insert description here
// You can write your code in this editor
enum bState {
	hovered,
	clicked,
	release,
	resting
}

viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
buttonState = bState.resting;


