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
enemyState = 0;
enemyHit = false;
instance_deactivate_layer("Enemy_Layer");