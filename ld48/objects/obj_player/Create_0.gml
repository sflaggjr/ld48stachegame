/// @description Player States
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
//Tether States
enum tState {
	active,
	invul,
	destroyed
}
//Player facing
enum pFacing {
	left,
	right
}
//State Definitions
playerState = pState.active;
playerFacing = pFacing.right;
tetherState = tState.active;
playerHit = false;
tetherHit = false;
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
runSpeed = 5;

//Sprite variables
spriteRun = spr_player_run;
spriteIdle = spr_player_stand;

localFrame = 0;


