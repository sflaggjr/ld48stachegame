//enemy States
enum eStates {
	idle,
	active,
	dead,
	left,
	right,
	primed,
	reset,
	attack,
	invul
	}
//Variable Definition
eHp = 1;
enemyState = eStates.idle;
enemyHit = false;
