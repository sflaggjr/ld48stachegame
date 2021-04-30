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
playerState = ACTIVE;
playerFacing = pFacing.right;
tetherState = tState.active;
playerHit = false;
tetherHit = false;
//Controls


//Variable Definitions
tSpd = 3;
spd = 10;
collisionOffset = 10;
iframes = 60;
firing = false;
runSpeed = 5;
canShoot = true;
shotCooldown = 10;

//Sprite variables
spriteRun = spr_player_run;
spriteIdle = spr_player_stand;

localFrame = 0;


