//Game State Machine
enum gState {
	play,
	pause,
	menu,
	startUp,
	gameEnd
}
//for testing purposes, we default to gState.play. Once we are closer to finalizing, we will change this
//to gState.startUp
global.gameState = gState.play;