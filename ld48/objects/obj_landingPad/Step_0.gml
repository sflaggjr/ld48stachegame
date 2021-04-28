//if the player lands on me, move us to the Rest state
if place_meeting(x, y, obj_player) {
	if GAME_STATE == PLAY {
	GAME_STATE = REST;
	}
	else if GAME_STATE == INTRO || GAME_STATE == REST{
		GAME_STATE = PLAY;
	}
	room_goto_next();	
}