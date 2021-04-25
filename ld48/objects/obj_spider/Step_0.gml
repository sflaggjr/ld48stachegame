/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if enemyState = eStates.primed {
	if y < targetY - 100 {
		y += spd;
	}
	else {
		alarm[0] = chargeTime;
		enemyState = eStates.reset;
	}
}

if instance_exists(obj_player){
	if enemyState = eStates.active {
		var targetX;
		targetX = instance_nearest(x, y, obj_player);
		

	}
}