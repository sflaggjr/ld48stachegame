/// @description Controlling the animation and text character build up over time.
/// using this video as a reference: https://www.youtube.com/watch?v=BUxkMDTnxn8&ab_channel=ShaunSpalding

lerpProgress += (1 - lerpProgress) /50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);	
	if (textProgress >= _messageLength)
	{
		instance_destroy();
		if (instance_exists(obj_textQueued))
		{
			with (obj_textQueued) ticket--;
		}
		else
		{
			with (obj_player) playerState = lastState;
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}