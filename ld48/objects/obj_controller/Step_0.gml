//close game if state = gameEnd
if keyboard_check_pressed(vk_escape) {
	global.gameState = gState.gameEnd;
}

if global.gameState = gState.gameEnd {
	room_goto(rm_menu);
	global.gameState = gState.menu;
}

if keyboard_check_pressed(ord("P")) {
	if global.gameState == gState.play {
		global.gameState = gState.pause;
	}
	else {
		global.gameState = gState.play;
	}
}

//Pause Game handling
if global.gameState = gState.pause {
	instance_deactivate_all(true);
}
else {
	instance_activate_all();
}
//move to gameState.play
if keyboard_check_pressed(vk_enter) {
	if global.gameState != gState.play {
		room_goto(rm_lvl1);
	}
	global.gameState = gState.play;
}

if global.gameState = gState.rest {
	if keyboard_check_pressed(ord("H")) {
		global.hp = maxHP;
		room_goto(rm_lvl1);
		global.gameState = gState.play;
	}
	if keyboard_check_pressed(ord("T")) {
		global.tether = maxHP;
		room_goto(rm_lvl1);
		global.gameState = gState.play;
	}
}
//deactivate any instance that isn't in the camera view
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_deactivate_all(true);
instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);