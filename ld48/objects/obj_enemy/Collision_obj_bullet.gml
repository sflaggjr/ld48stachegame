/// @description Insert description here
// You can write your code in this editor
if enemyState != eStates.primed {
	var nearestBullet = instance_nearest(x, y, obj_bullet);
	eHp--;
	//enemyState = eStates.invul;
	alarm[11] = 30;
	instance_destroy(nearestBullet);
}