/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_exists(obj_player) {
if y >= obj_player.y {
	y -= eSpd;
}
else {
	eSpd = 0;
}


	if eSpd == 0 {
		if canShoot {
			instance_create_layer(x, y, "Instances", obj_enemyBullet)
			canShoot = false;
			alarm[0] = shotCooldown;
			audio_play_sound(snd_wallcrawler, 5, false);
		}
	}
}