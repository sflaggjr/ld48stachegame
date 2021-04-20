//close game if state = gameEnd
if keyboard_check_pressed(vk_escape) {
	global.gameState = gState.gameEnd;
}

if global.gameState = gState.gameEnd {
	game_end();
}

if keyboard_check_pressed(ord("P")) {
	global.gameState = gState.pause;
}
