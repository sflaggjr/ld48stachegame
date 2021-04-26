if keyboard_check_pressed(vk_escape)  && global.gameState == gState.play {
	if global.gameState == gState.play {
		global.gameState = gState.pause;
		instance_deactivate_all(true)
	}
	else {
		global.gameState = gState.play;
	}
}
if keyboard_check_pressed(vk_enter) && global.gameState == gState.intro{
	room_goto_next();
	global.gameState = gState.play
}

//End of Game Handling
if global.gameState == gState.gameEnd {
	room_goto(rm_menu);
	global.gameState = gState.menu;
}
//deactivate any instance that isn't in the camera view
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_deactivate_all(true);
instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
//update instructions UI

if decay {
	alphaDecay -= 0.01;
	if alphaDecay <= 0 {
		firstTime = false;
	}
}
