/// @description Insert description here
// You can write your code in this editor


if (room == rm_camp)
{
	var str = "OLD MAN: So, you managed to survive after all..."
	NewTextBox(str, 2);
	audio_play_sound(snd_talking, 0, false);
	alarm[0] = string_length(str) * 2.5
	
	NewTextBox("MYSTERIOUS FIGURE: You! How did you get down here?");
	NewTextBox("OLD MAN: A skilled scavenger can make their way through the labyrinths.", 2);
	NewTextBox("OLD MAN: Scavengers built these camps and others like it further down.", 2);
	NewTextBox("MYSTERIOUS FIGURE: I thought this place wasn't worth dying for?");
	NewTextBox("OLD MAN: It's not. That's why I don't plan on dying.", 2);
	NewTextBox("MYSTERIOUS FIGURE: Sure, whatever you say old man...");
	NewTextBox("RANDO: The name is Rando, buckethead.", 2);
	NewTextBox("RANDO: Better remember it if you are going to continue this foolhardy endeavor.", 2);
	NewTextBox("RANDO: What's your name, young scamp?", 2);
	NewTextBox("MYSTERIOUS FIGURE: I don't...");
	NewTextBox("MYSTERIOUS FIGURE: ...");
	NewTextBox("MYSTERIOUS FIGURE: I don't have time for this.");
	NewTextBox("RANDO: 'They came from the East...'", 2);
	NewTextBox("EASTMAN: What was that?");
	NewTextBox("RANDO: Just the ramblings of an old man...", 2);
}

if (room == rm_theRim)
{
	alarm[0] = 180;
}