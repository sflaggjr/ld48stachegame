/// @description Insert description here
// You can write your code in this editor


if (room == rm_camp3)
{
	var str = "EASTMAN: What the... \n \n [Press SPACE to Continue]"
	NewTextBox(str, 0);
	audio_play_sound(snd_talking, 0, false);
	alarm[0] = string_length(str) * 2.5
	
	NewTextBox("MYSTERIOUS FIGURE: Someone joins us? Another interloper?",0);
	NewTextBox("EASTMAN: Who...what are you?",0);
	NewTextBox("INTERLOPER: I am the creation.", 0);
	NewTextBox("EASTMAN: Creation? You mean you're just \nanother one of these monsters?",0);
	NewTextBox("INTERLOPER: In a way...",0);
	NewTextBox("INTERLOPER: I am another one of you...", 0);
	NewTextBox("EASTMAN: You aren't making any sense...",0);
	NewTextBox("INTERLOPER: 'They came from the East'", 0);
	NewTextBox("EASTMAN: Who came from the East?! Who are they?",0);
	NewTextBox("EASTMAN: Who am I?!",0);
	NewTextBox("INTERLOPER: You are an interloper.", 0);
	NewTextBox("INTERLOPER: You are a monster.", 0);
	NewTextBox("INTERLOPER: Like me.", 0);
}
