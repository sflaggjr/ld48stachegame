/// @description Insert description here
// You can write your code in this editor
if enemyState != eStates.primed {
	var nearestBullet = instance_nearest(x, y, obj_bullet);	
	if instance_exists(nearestBullet) {
		hitX = nearestBullet.x;
		hitY = nearestBullet.y;
	}
	eHp--;
	//enemyState = eStates.invul;
	alarm[11] = 30;
	enemyHit = true;
	alarm[10] = 3;
	instance_destroy(nearestBullet);
}