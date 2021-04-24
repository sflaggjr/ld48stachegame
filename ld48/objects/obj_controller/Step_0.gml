//close game if state = gameEnd
if keyboard_check_pressed(vk_escape) {
	global.gameState = gState.gameEnd;
}

if global.gameState = gState.gameEnd {
	game_end();
}

if keyboard_check_pressed(ord("P")) {
	if global.gameState == gState.play {
		global.gameState = gState.pause;
	}
	else {
		global.gameState = gState.play;
	}
}


if global.gameState = gState.pause {
	instance_deactivate_all(true);
}
else {
	instance_activate_all();
}
//move to gameState.play
if keyboard_check_pressed(vk_enter) {
	if global.gameState != gState.play {
		room_goto(rm_lvl1);
	}
	global.gameState = gState.play;
}
