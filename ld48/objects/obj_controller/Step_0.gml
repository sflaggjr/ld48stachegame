if GAME_STATE == PLAY || GAME_STATE == PAUSE {
	if keyboard_check_pressed(vk_escape) {
		if GAME_STATE == PLAY {
		GAME_STATE = PAUSE;
	}
	else if GAME_STATE == PAUSE {
		GAME_STATE = PLAY;
		var _vx = camera_get_view_x(view_camera[0]);
		var _vy = camera_get_view_y(view_camera[0]);
		var _vw = camera_get_view_width(view_camera[0]);
		var _vh = camera_get_view_height(view_camera[0]);
		instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
		}
	}
}	


if keyboard_check_pressed(vk_enter) && GAME_STATE == INTRO{
	room_goto_next();
	if  (room == rm_camp0) {
	GAME_STATE = PLAY;
		}
	}

//End of Game Handling
if GAME_STATE == GAME_OVER {
	room_goto(rm_menu);
	global.hp = global.maxHP;
	global.tether = global.maxHP
	GAME_STATE = MAIN_MENU;
}

//update instructions UI
if GAME_STATE = PLAY && firstTime = true {
	alarm[0] = 500;
}
if decay {
	alphaDecay -= 0.01;
	if alphaDecay <= 0 {
		firstTime = false;
	}
}
