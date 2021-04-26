/// @description Start music when entering various rooms
//if (room == rm_lvl1 && !audio_is_playing(snd_level1)) {
//	//Kill the previous tracks volume
//	audio_sound_gain(snd_camp, 0, 2000);	
//	//Turn up volume of the main track
//	audio_sound_gain(snd_level1, 1, 2000);
//	
//} else if (room == rm_camp && !audio_is_playing(snd_camp)) {
//	//Kill the previous tracks volume
//	audio_sound_gain(snd_level1, 0, 2000);	
//	//Turn up volume of the main track
//	audio_sound_gain(snd_camp, 1, 5000);
//} 

//if (global.gameState == gState.play) {
//	//Kill the previous tracks volume
//	audio_sound_gain(snd_camp, 0, 2000);	
//	//Turn up volume of the main track
//	audio_sound_gain(snd_level1, 1, 2000);	
//}
//
//if (global.gameState == gState.rest) {
//	//Kill the previous tracks volume
//	audio_sound_gain(snd_level1, 0, 2000);	
//	//Turn up volume of the main track
//	audio_sound_gain(snd_camp, 1, 5000);
//}