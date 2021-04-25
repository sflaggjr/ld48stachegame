// Script assets have changed for v2.3.0 see
// using this video as a reference: https://www.youtube.com/watch?v=xMYC53fv4FU&ab_channel=ShaunSpalding


function NewTextBox(){
	var _obj;
	
	if (instance_exists(obj_text))
	{
		_obj = obj_textQueued;
	}
	else 
	{
		_obj = obj_text;
	}
	
	with (instance_create_layer(0,0, "Instances", _obj))
	{
		message = argument[0];
		if (instance_exists(other)) originInstance = other.id else originInstance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
	}
	
	with (obj_player)
	{
		if (playerState != PlayerStateLocked)
		{
			lastState = playerState;
			playerState = PlayerStateLocked;
		}
	}
	
}