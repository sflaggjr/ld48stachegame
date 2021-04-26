//capture mouse X/Y
if !window_get_fullscreen() {
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
}
else {
	mouseX = mouse_x;
	mouseY = mouse_y;
}
//Actions for when what button is pushed on the main menu
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
			//Debug button for Camp room
			if button3 = 1 {
				global.gameState = gState.rest;
				room_goto(rm_camp);
			}
		}	
	}
}
//Actions for what button is pushed at the camp
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
			global.targetRoom = rm_camp;
			global.targetX = 800;
			global.targetY = 560;
		}
			
		}
	}
}