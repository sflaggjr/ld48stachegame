/// @description Start music when entering various rooms
//if (room == rm_lvl1 && !audio_is_playing(snd_level1)) {
//	audio_sound_gain(snd_camp, 0, 2000);
//	if (audio_sound_get_gain(snd_camp) <= 0) { 
//			audio_stop_sound(snd_camp);
//	}
//	
//	audio_play_sound(snd_level1, 1000, true);
//	
//} if (room == rm_camp && !audio_is_playing(snd_camp)) {
//	audio_sound_gain(snd_level1, 0, 2000);
//	if (audio_sound_get_gain(snd_level1) <= 0) { 
//			audio_stop_sound(snd_level1);
//	}	
//
//	audio_play_sound(snd_camp, 1000, true);	
//	audio_sound_gain(snd_camp, 0, 0);
//	audio_sound_gain(snd_camp, 1, 5000);	
//}

//if (GAME_STATE == PLAY && !audio_is_playing(snd_level1)) {
//	audio_sound_gain(snd_camp, 0, 2000);
//	if (audio_sound_get_gain(snd_camp) <= 0) { 
//			audio_stop_sound(snd_camp);
//	}
//	
//	audio_play_sound(snd_level1, 1000, true);
//	
//}
//
//if (GAME_STATE == REST && !audio_is_playing(snd_camp)) {
//	audio_sound_gain(snd_level1, 0, 2000);
//	if (audio_sound_get_gain(snd_level1) <= 0) { 
//			audio_stop_sound(snd_level1);
//	}	
//
//	audio_play_sound(snd_camp, 1000, true);	
//	audio_sound_gain(snd_camp, 0, 0);
//	audio_sound_gain(snd_camp, 1, 5000);	
//}