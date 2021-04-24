x += spd;

//if I collide with something destroy me
if place_meeting(x, y, other) {
	instance_destroy();
}
	