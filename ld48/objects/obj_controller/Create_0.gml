//Game State Machine
enum gState {
	play,
	pause,
	menu,
	splash,
	gameEnd
}

global.gameState = gState.play;