
//destroy me if my hp = 0 
if eHp <= 0 {
	instance_destroy();
	//audio_sound_pitch(snd_death, (1/(self.size/2)));
	audio_play_sound(snd_death,10,false);
}
