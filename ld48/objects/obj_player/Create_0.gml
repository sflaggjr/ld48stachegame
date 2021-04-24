//Player States
enum pState {
	idle,
	dead,
	hit,
	descending,
	ascending
}
enum pFacing {
	left,
	right
}
//State Definitions
playerState = pState.idle;
playerFacing = pFacing.right;
//Controls
keyUp = ord("W");
keyDown = ord("S");
keyLeft = ord("A");
keyRight = ord("D");
keyFire = mb_left;

//Variable Definitions
vSpd = 3;
hSpd = 10;
hp = 10;
tetherHp = 10;
collisionOffset = 10;

