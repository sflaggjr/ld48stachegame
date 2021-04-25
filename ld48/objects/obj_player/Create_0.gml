//Player States
enum pState {
	active,
	dead,
	hit,
	invul,
	descending,
	ascending,
	tetherDestroyed,
	idle,
	locked
}
enum tState {
	active,
	invul,
	destroyed
}
enum pFacing {
	left,
	right
}
//State Definitions
playerState = pState.active;
playerFacing = pFacing.right;
tetherState = tState.active;
//Controls
keyUp = ord("W");
keyDown = ord("S");
keyLeft = ord("A");
keyRight = ord("D");
keyFire = mb_left;

//Variable Definitions
vSpd = 3;
hSpd = 10;
collisionOffset = 10;
iframes = 60;
firing = false;




