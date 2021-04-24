//if I'm hit with a bullet, reduce my HP by 1
if place_meeting(x, y, obj_bullet) {
	eHp--;
	instance_destroy(obj_bullet);
}
//destroy me if my hp = 0 
if eHp == 0 {
	instance_destroy();
}
