if (room == rm_lvl1) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 1000);
	audio_sound_gain(snd_talking, 0, 1000);
	audio_sound_gain(snd_theRim, 0, 100);
	
	show_debug_message("Playing ROOM LEVEL 1");
	
	//Kill the volume, then start the track, then raise the volume
	audio_sound_gain(snd_level1, 0, 0);
	audio_play_sound(snd_level1, 1000, true);
	audio_sound_gain(snd_level1, 1, 0000);
	
} else if (room == rm_camp) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 5000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);	
	show_debug_message("Playing CAMP1")			
	
} else if (room == rm_lvl2) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 0);	
	audio_sound_gain(snd_talking, 0, 1000);
	//Just in case it's still playing or trying to play twice
	audio_sound_gain(snd_level1, 0, 0);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	
	show_debug_message("Playing ROOM LEVEL 2");	
	
	//Kill the volume, then start the track, then raise the volume
	audio_play_sound(snd_level1, 1000, true);
	audio_sound_gain(snd_level1, 1, 0000);
	
} else if (room == rm_camp2) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 5000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);	
	show_debug_message("Playing CAMP2")			
	
} else if (room == rm_theRim) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 1000);
	audio_sound_gain(snd_talking, 0, 1000);
	
	show_debug_message("Playing THE RIM");	
	
	//Kill the volume, then start the track, then raise the volume
	audio_sound_gain(snd_theRim, 0, 0);
	audio_play_sound(snd_theRim, 1000, true);
	audio_sound_gain(snd_theRim, 1, 0000);	
} else if (room == rm_lvl3) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 0);	
	audio_sound_gain(snd_talking, 0, 1000);
	//Just in case it's still playing or trying to play twice
	audio_sound_gain(snd_level1, 0, 0);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	
	show_debug_message("Playing ROOM LEVEL 3");	
	
	//Kill the volume, then start the track, then raise the volume
	audio_play_sound(snd_level1, 1000, true);
	audio_sound_gain(snd_level1, 1, 0000);
	
} else if (room == rm_camp3) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 5000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);	
	show_debug_message("Playing CAMP3")			
}
