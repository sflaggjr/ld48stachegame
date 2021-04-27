/// @description Insert description here
// You can write your code in this editor

if (cutsceneText) && !(instance_exists(obj_text))
	{		
		y += panRate;
		
		if y > room_height {
		instance_destroy();
		alarm[1] = 300;
		}
		
		
}

