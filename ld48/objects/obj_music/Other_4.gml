if (room == rm_lvl1) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_camp, 0, 1000);	
	//Turn up volume of the main track
	audio_sound_gain(snd_level1, 1, 0000);
	
} else if (room == rm_camp) {
	//Kill the previous tracks volume
	audio_sound_gain(snd_level1, 0, 5000);	
	//Turn up volume of the main track
	audio_sound_gain(snd_camp, 1, 10000);
}