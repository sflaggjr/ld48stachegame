//Draw Main Menu if in MAIN_MENU
if GAME_STATE != GAME_OVER {
	if GAME_STATE = MAIN_MENU {
		draw_set_font(fnt_textFont);
		draw_set_color(c_yellow);
	}

	//Draw Paused if game is paused
	draw_set_color(c_white);
	if GAME_STATE = PAUSE {
		draw_text(x + (room_width / 2), y, "Paused");
		draw_text(x + (room_width / 2 - 100), y + 20, "Press Q to return to the Main Menu");
	}

	if GAME_STATE = PLAY && decay >= 0 {
		draw_text_ext_color(250, 30, "Get to the camp at the bottom of the map with your body and tether intact.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		draw_text_ext_color(250, 60, "WASD on your keyboard to move. Left click on your mouse to fire your arm cannon.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		draw_text_ext_color(250, 90, "If you need a break, you can always hit Escape to pause.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		firstTime = false;
	}
}