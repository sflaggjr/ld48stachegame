/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var 
if enemyState = eStates.primed {
	if x < lastX + primed_x {
		x += spd;
	}
}
if enemyState = eStates.reset {
	if x > lastX + primed_x {
		x -= spd;
	}
}
	
if enemyState = eStates.active {
	if x != lastX + max_x {
		x +=spd;	
	}
	
}

