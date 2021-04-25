/// @description Insert description here
// You can write your code in this editor
if shake == true {
	var ranX = random_range(-shakeIntensity, shakeIntensity);
	var ranY = random_range(-shakeIntensity, shakeIntensity);
	camera_set_view_pos(view_camera[0], viewX + ranX, viewY + ranY);
	viewX = camera_get_view_x(view_camera[0]);
	viewY = camera_get_view_y(view_camera[0]);
}
	