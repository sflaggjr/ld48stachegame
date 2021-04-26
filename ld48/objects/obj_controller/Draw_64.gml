//Draw Main Menu if in gState.menu
if global.gameState != gState.gameEnd {
	if global.gameState = gState.menu {
		draw_set_font(fnt_textFont);
		draw_set_color(c_yellow);
		draw_text(room_width / 2, y, "Untitled Meteor Hole Diving Game");
	}

	//Draw Paused if game is paused
	draw_set_color(c_white);
	if global.gameState = gState.pause {
		draw_text(x + (room_width / 2), y, "Paused");
		draw_text(x + (room_width / 2 - 100), y + 20, "Press Q to return to the Main Menu");
	}

	if global.gameState = gState.play && firstTime = true {
		draw_text_ext_color(150, 30, "Get to the camp at the bottom of the map with your body and tether intact.", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
		draw_text_ext_color(150, 60, "WASD on your keyboard to move. Left click on your mouse to show", 5, 1000, c_white, c_white, c_white, c_white, alphaDecay);
	}
}