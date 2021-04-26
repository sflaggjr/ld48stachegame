//if the player lands on me, move us to the Rest state
if place_meeting(x, y, obj_player) {
	if global.gameState == gState.play {
	global.gameState = gState.rest;
	}
	else if global.gameState == gState.intro || global.gameState == gState.rest{
		global.gameState = gState.play;
	}
	room_goto_next();	
}