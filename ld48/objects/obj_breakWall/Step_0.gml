if place_meeting(x, y, obj_bullet) {
	wHp--;
	instance_destroy(obj_bullet);
}
//destroy me if my hp = 0 
if wHp == 0 {
	instance_destroy();
}
