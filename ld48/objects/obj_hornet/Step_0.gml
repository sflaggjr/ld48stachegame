// Inherit the parent event
event_inherited();

if enemyState = eStates.primed {
if point_distance(x, y, obj_player.x, obj_player.y) < 200 {
	move_towards_point(x, obj_player.y, spd)
	}
}




