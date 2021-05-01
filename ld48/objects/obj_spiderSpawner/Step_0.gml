/// @description Insert description here
// You can write your code in this editor
spawnY = camera_get_view_y(view_camera[0]);
if place_meeting (x, y, obj_player) {
	triggered = true;
}
if triggered = true {
	for (var i = 0; i <= spawnNumber; i += 1) {
		instance_create_layer(floor(random_range(spawnX1, spawnX2)), spawnY, "Enemy_Layer", obj_spider);
	}
	instance_destroy();
}