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
if GAME_STATE = MAIN_MENU{
	if buttonState == bState.hovered {
		if mouse_check_button_pressed(mb_left) {
			if button1 = 1 {
				GAME_STATE = INTRO;
				room_goto_next();
			}
			if button2 = 1 {
				game_end();
			}
			//Debug button for Camp rooms
			/*if button3 = 1 {
				GAME_STATE = REST;
				room_goto(rm_camp3);
			}*/
		}	
	}
}
//Actions for what button is pushed at the camp
if GAME_STATE = REST {
		if buttonState == bState.hovered {
			if mouse_check_button_pressed(mb_left) {
				if button1 = 1 {
					global.hp = global.maxHP;
					obj_crate.used = true;
					audio_play_sound(snd_repair, 1000, false);
				}
			if button2 = 1 {
				global.tether = global.maxHP;
				obj_crate.used = true;
				audio_play_sound(snd_repair, 1000, false);
				}
			}
		}
}
		