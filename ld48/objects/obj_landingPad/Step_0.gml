//if the player lands on me, move us to the Rest state
if place_meeting(x, y, obj_player) {
	global.gameState = gState.rest;
	global.targetX = targetX;
	global.targetY = targetY;
	//global.targetDirection = obj_player.pFacing;
	room_goto(targetRoom);
	
	audio_sound_gain(snd_level1, 0, 2000);
	if (audio_sound_get_gain(snd_level1) <= 0) { 
			audio_stop_sound(snd_level1);
	}	

	audio_play_sound(snd_camp, 1000, true);	
	audio_sound_gain(snd_camp, 0, 0);
	audio_sound_gain(snd_camp, 1, 5000);	
}