//capture mouse X/Y
mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();
if global.gameState = gState.menu{
	if buttonState == bState.hovered {
		if mouse_check_button_pressed(mb_left) {
			if button1 = 1 {
				global.gameState = gState.play;
				room_goto(rm_lvl1);
			}
			if button2 = 1 {
				game_end();
			}
		}	
	}
}

if global.gameState = gState.rest {
	if buttonState == bState.hovered {
		if mouse_check_button_pressed(mb_left) {
			if button1 = 1 {
				global.hp = global.maxHP;
				room_goto(rm_lvl1);
				global.gameState = gState.play;
			}
		if button2 = 1 {
			global.tether = global.maxHP;
			room_goto(rm_lvl1);
			global.gameState = gState.play;
		}
			
		}
	}
}