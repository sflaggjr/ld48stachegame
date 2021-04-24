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
keyUp = vk_up;
keyDown = vk_down;
keyLeft = vk_left;
keyRight = vk_right;
keyFire = vk_space;

//Variable Definitions
vSpd = 3;
hSpd = 10;
hp = 10;
tetherHp = 10;
collisionOffset = 10;

