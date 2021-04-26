event_inherited();
//
if enemyState = eStates.primed {
	if y < targetY {
		y += spd;
	}
	else {
		spawnY = y;
		alarm[0] = chargeTime;
		enemyState = eStates.reset;
	}
}
//Shoot an acid ball at player's tether.
if instance_exists(obj_player){
	if enemyState = eStates.active {
		if canShoot = true {
			instance_create_layer(x, y, "Instances", obj_tetherBullet);
			canShoot = false;
			alarm[1] = shotCooldown;
		}
		//If we get close to the top of the screen, update Y to keep spider on screen
		if obj_player.tetherState != tState.destroyed {
			var updateY = camera_get_view_y(view_camera[0]);
			offsetY = point_distance(x, targetY, x, view_get_yport(view_yport[0]));
			y = updateY + offsetY;
		}
	}
}


