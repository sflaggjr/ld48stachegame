/// @description Insert description here
// You can write your code in this editor
if global.gameState == gState.play {
	if !instance_exists(obj_player) {
		global.gameState = gState.gameEnd;
	}
}
