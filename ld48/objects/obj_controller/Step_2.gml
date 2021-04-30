/// @description Insert description here
// You can write your code in this editor
if GAME_STATE == PLAY {
	if !instance_exists(obj_player) {
		GAME_STATE = GAME_OVER;
	}
}

if GAME_STATE == PAUSE{
	if keyboard_check_pressed(ord("Q")) {
		GAME_STATE = GAME_OVER;
	}
}
if GAME_STATE == INTRO {

}