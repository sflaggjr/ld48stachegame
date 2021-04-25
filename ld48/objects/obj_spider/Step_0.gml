/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if enemyState = eStates.primed {
	if y < targetY {
		y += spd;
	}
	else {
		alarm[0] = chargeTime;
		enemyState = eStates.reset;
	}
}

if instance_exists(obj_player){
	if enemyState = eStates.active {
		if canShoot = true {
			instance_create_layer(x, y, "Instances", obj_tetherBullet);
			canShoot = false;
			alarm[1] = shotCooldown;
		}
	}
}
