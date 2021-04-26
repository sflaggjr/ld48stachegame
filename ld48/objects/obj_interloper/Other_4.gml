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

if (room == rm_theRim)
{
	alarm[0] = 180;
}

if (room == rm_camp2)
	{
		NewTextBox("RANDO: Well done, buckethead. \n Those creatures can be quite nasty. \n \n [Press SPACE to Continue]", 0);
		NewTextBox("EASTMAN: What are they? What happened here?",0);
		NewTextBox("RANDO: You mean, aside from the giant space rock \nthat wiped this whole city out?", 0);
		NewTextBox("RANDO: Meteor has a strange way of affecting things. \nFor some, it turned them into \ngiant putrid bugs.", 0);
		NewTextBox("RANDO: That stink is horrid! Even after all these \nyears it makes my stomach turn.", 0);
		NewTextBox("EASTMAN: I...can't smell them in here.",0);
		NewTextBox("RANDO: You ever take that suit off? \nYou know, walk around in the real world?", 0);
		NewTextBox("EASTMAN: I don't know if I can take it off. \nI don't think I've tried before.",0);
		NewTextBox("RANDO: You don't seem to know a lot about yourself...", 0);
		NewTextBox("RANDO: You sure the meteor isn't starting \nto affect you too?", 0);
		NewTextBox("EASTMAN: The meteor is not affecting me. \nI am sure of that.",0);
		NewTextBox("RANDO: You'd be wise not to trust \nthe reality presented to you.", 0);
		NewTextBox("RANDO: Not down here.", 0);
		NewTextBox("EASTMAN: Noted. I'll be off then. \nSee you at the next camp.",0);
		NewTextBox("RANDO: Afraid this is the end of the \nline for me, friend.", 0);
		NewTextBox("RANDO: There's only death from here on out.", 0);
		NewTextBox("EASTMAN: Even if that's true...",0);
		NewTextBox("EASTMAN: I still have to see for myself.",0);
		NewTextBox("RANDO: I understand.", 0);
		NewTextBox("RANDO: You take care of yourself then.", 0);
		NewTextBox("RANDO: Maybe I'll catch you on the next loop.", 0);
		NewTextBox("EASTMAN: Maybe...", 0);
	}
	
	if (room == rm_camp3)
	{
		NewTextBox("RANDO: Well done, buckethead. \n Those creatures can be quite nasty. \n \n [Press SPACE to Continue]", 0);
		NewTextBox("EASTMAN: What are they? What happened here?",0);
		NewTextBox("RANDO: You mean, aside from the giant space rock \nthat wiped this whole city out?", 0);
		NewTextBox("RANDO: Meteor has a strange way of affecting things. \nFor some, it turned them into \ngiant putrid bugs.", 0);
		NewTextBox("RANDO: That stink is horrid! Even after all these \nyears it makes my stomach turn.", 0);
		NewTextBox("EASTMAN: I...can't smell them in here.",0);
		NewTextBox("RANDO: You ever take that suit off? \nYou know, walk around in the real world?", 0);
		NewTextBox("EASTMAN: I don't know if I can take it off. \nI don't think I've tried before.",0);
		NewTextBox("RANDO: You don't seem to know a lot about yourself...", 0);
		NewTextBox("RANDO: You sure the meteor isn't starting \nto affect you too?", 0);
		NewTextBox("EASTMAN: The meteor is not affecting me. \nI am sure of that.",0);
		NewTextBox("RANDO: You'd be wise not to trust \nthe reality presented to you.", 0);
		NewTextBox("RANDO: Not down here.", 0);
		NewTextBox("EASTMAN: Noted. I'll be off then. \nSee you at the next camp.",0);
		NewTextBox("RANDO: Afraid this is the end of the \nline for me, friend.", 0);
		NewTextBox("RANDO: There's only death from here on out.", 0);
		NewTextBox("EASTMAN: Even if that's true...",0);
		NewTextBox("EASTMAN: I still have to see for myself.",0);
		NewTextBox("RANDO: I understand.", 0);
		NewTextBox("RANDO: You take care of yourself then.", 0);
		NewTextBox("RANDO: Maybe I'll catch you on the next loop.", 0);
		NewTextBox("EASTMAN: Maybe...", 0);
	}