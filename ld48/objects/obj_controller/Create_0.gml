//Game State Machine
enum gState {
	play,
	pause,
	menu,
	startUp,
	gameEnd,
	rest
}
//for testing purposes, we default to gState.play. Once we are closer to finalizing, we will change this
//to gState.startUp
global.gameState = gState.menu;
global.targetRoom = -1;
global.targetX = -1;
global.targetX = -1;
global.hp = 5;
global.tether = 5;
maxHP = 5;