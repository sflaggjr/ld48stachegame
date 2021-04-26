//Draw Main Menu if in gState.menu
if global.gameState != gState.gameEnd {
	if global.gameState = gState.menu {
		draw_set_font(fnt_textFont);
		draw_set_color(c_yellow);
	}

	//Draw Paused if game is paused
	draw_set_color(c_white);
	if global.gameState = gState.pause {
		draw_text(x + (room_width / 2), y, "Paused");
		draw_text(x + (room_width / 2 - 100), y + 20, "Press Q to return to the Main Menu");
	}

	if global.gameState = gState.play && firstTime = true {
		draw_text_ext_color(150, 30, "Get to the camp at the bottom of the map with your body and tether intact.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		draw_text_ext_color(150, 60, "WASD on your keyboard to move. Left click on your mouse to fire your arm cannon.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		draw_text_ext_color(150, 90, "If you need a break, you can always hit Escape to pause.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
	}
}