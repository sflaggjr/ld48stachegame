if (room == rm_lvl1) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 1000);
	audio_sound_gain(snd_talking, 0, 1000);
	audio_sound_gain(snd_theRim, 0, 100);

	if !audio_is_playing(snd_level1) {
		//Kill the volume, then start the track, then raise the volume
		audio_play_sound(snd_level1, 1000, true);
		audio_sound_gain(snd_level1, 1, 0000);
	} else {
		audio_sound_gain(snd_level1, 1, 0000);
	}
	
} else if (room == rm_camp) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 4000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}	
	
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);			
	
} else if (room == rm_lvl2) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 0);	
	audio_sound_gain(snd_talking, 0, 1000);

	if !audio_is_playing(snd_level1) {
		//Kill the volume, then start the track, then raise the volume
		audio_play_sound(snd_level1, 1000, true);
		audio_sound_gain(snd_level1, 1, 0000);
	} else {
		audio_sound_gain(snd_level1, 1, 0000);
	}
		
	
} else if (room == rm_camp2) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 4000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);			
	
} else if (room == rm_theRim) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 1000);
	audio_sound_gain(snd_talking, 0, 1000);
	audio_sound_gain(snd_intro, 0, 1000);
	if (audio_sound_get_gain(snd_intro) <= 0) { 
			audio_stop_sound(snd_intro);
	}	
	
	//Kill the volume, then start the track, then raise the volume
	audio_sound_gain(snd_theRim, 0, 0);
	audio_play_sound(snd_theRim, 1000, true);
	audio_sound_gain(snd_theRim, 1, 0000);
	
} else if (room == rm_lvl3) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 0);	
	audio_sound_gain(snd_talking, 0, 1000);

	if !audio_is_playing(snd_level1) {
		//Kill the volume, then start the track, then raise the volume
		audio_play_sound(snd_level1, 1000, true);
		audio_sound_gain(snd_level1, 1, 0000);
	} else {
		audio_sound_gain(snd_level1, 1, 0000);
	}
	
} else if (room == rm_camp3) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 4000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}		
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);	

	
} else if (room == rm_menu) {
	//Kill the previous tracks volume
	audio_stop_all();
	//Kick off the camp music that stays on the background the whole game
	audio_play_sound(snd_camp, 1000, true);
	audio_sound_gain(snd_camp, 0, 0);
	//Kill the volume, then start the track, then raise the volume	
	audio_play_sound(snd_intro, 1000, true);
	audio_sound_gain(snd_intro, 1, 1000);
}