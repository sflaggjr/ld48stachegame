// Inherit the parent event
event_inherited();

if enemyState = eStates.primed {
	if y >= camera_get_view_y(view_camera[0]) + sprite_get_yoffset(spr_hornet) {
		y -= spd;
		alarm[0] = chargeTime;
	}
	else {
		spd = 0;	
	}
}
if enemyState = eStates.active {
	spd = 10;
	if canShoot {
		instance_create_layer(x, y, "Instances", obj_enemyBullet);
		canShoot = false;
		alarm[1] = 30;
		audio_play_sound(snd_wasp, 5, false);
	}
	if y >= view_get_yport(view_yport[0]) {
		y = camera_get_view_y(view_camera[0]) + sprite_get_yoffset(spr_hornet);
	}
}
if place_meeting(x + spd, y, obj_wall){
	if enemyFacing = 0 {
		enemyFacing = 1;
	}
	else if enemyFacing = 1 {
		enemyFacing = 0;
	}
}

if enemyFacing = 0 {
	x -= spd;
}
else if enemyFacing = 1 {
	x += spd;
}