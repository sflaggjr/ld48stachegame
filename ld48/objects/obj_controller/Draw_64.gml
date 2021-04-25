//Draw Main Menu if in gState.menu
if global.gameState = gState.menu {
	draw_set_color(c_yellow);
	draw_text(room_width / 2, y, "Untitled Meteor Hole Diving Game");
	draw_text(room_width / 2, y + 30, "Press Enter to Start");
}

//Draw Paused if game is paused
draw_set_color(c_white);
if global.gameState = gState.pause {
	draw_text(x + (room_width / 2), y, "Paused");
}

if global.gameState = gState.rest {
	draw_sprite(spr_player, 0, global.targetX, global.targetY);
}