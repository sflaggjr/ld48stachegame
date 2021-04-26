/// @description Insert description here
// You can write your code in this editor


if (room == rm_camp)
{
	var str = "OLD SCAVENGER: So, you managed to survive after all... \n \n [Press SPACE to Continue]"
	NewTextBox(str, 0);
	audio_play_sound(snd_talking, 0, false);
	alarm[0] = string_length(str) * 2.5
	
	NewTextBox("MYSTERIOUS FIGURE: You! How did you get down here?",0);
	NewTextBox("OLD SCAVENGER: A skilled scavenger can make \n their way through the labyrinths.",0);
	NewTextBox("OLD SCAVENGER: Old vets like me built these camps \nand others like it further down. \nMake sure you rest when you can.", 0);
	NewTextBox("MYSTERIOUS FIGURE: I thought this place \nwasn't worth dying for?",0);
	NewTextBox("OLD SCAVENGER: It's not. \nThat's why I don't plan on dying.", 0);
	NewTextBox("MYSTERIOUS FIGURE: Sure, whatever you say, old one...",0);
	NewTextBox("RANDO: The name is Rando, buckethead.", 0);
	NewTextBox("RANDO: Better remember it if you are going to \ncontinue this foolish endeavor.", 0);
	NewTextBox("RANDO: --shakes head--", 0);
	NewTextBox("RANDO: What's your name, anyhow?", 0);
	NewTextBox("MYSTERIOUS FIGURE: I don't...",0);
	NewTextBox("MYSTERIOUS FIGURE: ...",0);
	NewTextBox("MYSTERIOUS FIGURE: I don't have time for this.",0);
	NewTextBox("RANDO: 'They came from the East...'", 0);
	NewTextBox("EASTMAN: What was that?",0);
	NewTextBox("RANDO: Pay it no mind. \nJust the ramblings of an old man...", 0);
	NewTextBox("EASTMAN: Eastman...",0);
	NewTextBox("EASTMAN: 'They came from the East...'",0);
	NewTextBox("RANDO: Time is short, like you said. \nBetter get on your way, interloper.", 0);
}

if (room == rm_theRim)
{
	alarm[0] = 180;
}