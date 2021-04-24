/// @description Insert description here
// You can write your code in this editor
if keyboard_check(keyUp) {
		if y > 0 {
			if !place_meeting(x, y - collisionOffset, obj_wall) {
				y -= vSpd;
			}
	}
}
if keyboard_check(keyDown){
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
	playerFacing = pFacing.right;
}
if keyboard_check(keyLeft) {
	if !place_meeting(x - collisionOffset, y, obj_wall) {
		x -= hSpd;
	}
	playerFacing = pFacing.left;
}
//shoot a bullet
if keyboard_check_pressed(keyFire) {
	instance_create_layer(x ,y,"Instances",obj_bullet);
}

//tether hitbox
if collision_line(x + 10, y, room_width / 2, 0, obj_enemy, false, true) {
	instance_destroy();
}