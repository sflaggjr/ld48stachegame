//Game State Machine
enum gState {
	play,
	pause,
	menu,
	startUp,
	gameEnd,
	rest
}

global.gameState = gState.rest;
//Room Transition management
global.targetRoom = -1;
global.targetX = -1;
global.targetX = -1;
//Global Player Variables
global.hp = 5;
global.tether = 5;
global.uiFontSize = 2;

global.textSpeed = 0.75;
global.maxHP = 5;
firstTime = true;
alphaDecay = 1
decay = false;
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
//set timer to decay instructions
alarm[0] = 400;