//if the player lands on me, move us to the Rest state
if place_meeting(x, y, obj_player) {
	global.gameState = gState.rest;
}