// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MACROS(){
	#macro FRAME_RATE 60
	#macro CARDINAL_DIR round(direction/180)
	#macro RESOLUTION_W 1366
	#macro RESOLUTION_H 768
	#macro SPACE_CONTINUE " \n \n [Press SPACE to Continue]"
	// Game State Macros
	#macro GAME_STATE global.gameState
	#macro MAIN_MENU gState.menu
	#macro PLAY gState.play
	#macro PAUSE gState.pause
	#macro GAME_OVER gState.gameEnd
	#macro REST gState.rest
	#macro INTRO gState.intro
	//Player State Macros
	#macro ACTIVE pState.active
	#macro DEAD pState.dead
	#macro HIT pState.hit
	#macro INVUL pState.invul
	#macro DESCEND pState.descending
	#macro ASCEND pState.ascending
	#macro IDLE pState.idle
	#macro LOCKED pState.locked
	//Tether State Macros
	#macro T_ACTIVE tState.active
	#macro T_INVUL tState.invul
	#macro T_DESTROYED tState.destroyed
}