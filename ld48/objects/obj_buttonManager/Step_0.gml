//capture mouse X/Y
mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();

if buttonState == bState.hovered {
		if mouse_check_button_pressed(mb_left) {
			global.gameState = gState.play;
			room_goto(rm_lvl1);
		}	
	}

