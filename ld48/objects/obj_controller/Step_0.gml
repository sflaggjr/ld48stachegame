if keyboard_check_pressed(vk_escape) {
	if global.gameState == gState.play {
		global.gameState = gState.pause;
	}
	else {
		global.gameState = gState.play;
	}
}

//Pause Game handling
if global.gameState == gState.pause {
	instance_deactivate_all(true);
}
else {
	instance_activate_all();
}


if global.gameState == gState.rest {
	if keyboard_check_pressed(ord("H")) {
		global.hp = maxHP;
		room_goto(rm_lvl1);
		global.gameState = gState.play;
		
		audio_sound_gain(snd_camp, 0, 2000);
		if (audio_sound_get_gain(snd_camp) <= 0) { 
			audio_stop_sound(snd_camp);
		}
	
		audio_play_sound(snd_level1, 1000, true);
	
	}
	if keyboard_check_pressed(ord("T")) {
		global.tether = maxHP;
		room_goto(rm_lvl1);
		global.gameState = gState.play;
		
		audio_sound_gain(snd_camp, 0, 2000);
		if (audio_sound_get_gain(snd_camp) <= 0) { 
			audio_stop_sound(snd_camp);
		}
	
		audio_play_sound(snd_level1, 1000, true);		
		
	}
}
//deactivate any instance that isn't in the camera view
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_deactivate_all(true);
instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);