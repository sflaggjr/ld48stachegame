/// @description Insert description here
// You can write your code in this editor

if (cutsceneText) && !(instance_exists(obj_text))
	{
		y += panRate;
		alarm[1] = 180
		if y > room_height {
			panRate = 0;
	}
	
	if panRate = 0 && roomflag = false {
		roomflag = true;
		room_goto_next();
	}
}

