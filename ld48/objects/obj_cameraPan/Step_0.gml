/// @description Insert description here
// You can write your code in this editor

if (cutsceneText) && !(instance_exists(obj_text))
	{
		alarm[1] = 60;
		y += panRate;

		if y > room_height {
		instance_destroy();
	}
}

