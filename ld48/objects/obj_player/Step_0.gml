/// @description Insert description here
// You can write your code in this editor
if keyboard_check(keyUp) && tetherState != tState.destroyed {
		if y > 0 {
			if !place_meeting(x, y - collisionOffset, obj_wall) {
				y -= vSpd;
			}
	}
}
if keyboard_check(keyDown) && tetherState != tState.destroyed {
	if y <= room_height + collisionOffset {
		if !place_meeting(x, y + collisionOffset, obj_wall) {
			y += vSpd;
		}
	}
}
//stop movement if you collide with a wall
if keyboard_check(keyRight) {
	if !place_meeting(x + collisionOffset, y, obj_wall) {
		x += hSpd;
	}
}
if keyboard_check(keyLeft) {
	if !place_meeting(x - collisionOffset, y, obj_wall) {
		x -= hSpd;
	}
}
//shoot a bullet
if mouse_check_button_pressed(keyFire) {
	instance_create_layer(x ,y,"Instances",obj_bullet);
	audio_play_sound(snd_playerShot, 10, false);
	firing = true;
	//instance_create_layer(x, y,"Instances", obj_screenshake);
}
else {
	firing = false;
}

//tether hitbox
if collision_line(x + 10, y, room_width / 2, 0, obj_worm, false, true) && tetherState == tState.active {
	global.tether--;
	tetherState = tState.invul;
	alarm[1] = iframes;
}
if collision_line(x + 10, y, room_width / 2, 0, obj_spider, false, true) && tetherState == tState.active {
	if obj_spider.enemyState = eStates.attack {
		global.tether--;
		tetherState = tState.invul;
		alarm[1] = iframes;
	}
}
//enemy bullet collision
if place_meeting(x, y, obj_enemyBullet) && playerState == pState.active {
	global.hp--
	var closestBullet = instance_nearest(x, y, obj_enemyBullet);
	instance_destroy(closestBullet);
	playerState = pState.invul;
	alarm[0] = iframes;
}

//determine player facing
if mouse_x <= x {
	playerFacing = pFacing.left;
}
else {
	playerFacing = pFacing.right;
}

if global.tether <= 0 {
	tetherState = tState.destroyed;
}

if tetherState = tState.destroyed {
	vSpd = 30;
	y += vSpd;
	//Game over if tether is destroyed and you're lower than the room height
	if y > room_height {
		alarm[2] = 60;
	}
		
}
if global.hp <= 0 {
	playerState = pState.dead;
	alarm[2] = 60;
}

//make the character look like he's drifting
