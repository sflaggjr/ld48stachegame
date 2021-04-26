/// @description Insert description here
// You can write your code in this editor
draw_self();
if enemyHit {
	draw_circle_color(hitX, hitY, 15, c_yellow, c_orange, false);
}

if enemyState == eStates.primed {
	if enemyHit {
	draw_circle_color(hitX, hitY, 15, c_blue, c_white, false);
	}
}