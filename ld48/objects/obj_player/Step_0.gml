/// @description Insert description here
// You can write your code in this editor
if GAME_STATE == PLAY {
	keyUp = keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyFire = mb_left;
	
	var moveH = keyRight - keyLeft;
	var moveV = keyDown - keyUp;
	hSpd = moveH * spd;
	vSpd = moveV * tSpd;
	
	if place_meeting(x + hSpd, y, obj_wall) {
		while !place_meeting(x + sign(hSpd), y, obj_wall) {
			x = x + sign(hSpd);
		}
		hSpd = 0;
	}
	x = x + hSpd;
	
	if place_meeting(x, y + vSpd, obj_wall) {
		while !place_meeting(x, y + sign(vSpd), obj_wall) {
			y = y + sign(vSpd);
		}
		vSpd = 0;
	}
	y = y + vSpd;

	//shoot a bullet
	if mouse_check_button(keyFire) {
		if canShoot {
			instance_create_layer(x ,y,"Instances",obj_bullet);
			audio_play_sound(snd_playerShot, 10, false);
			firing = true;
			canShoot = false;
			alarm[4] = shotCooldown;
			//instance_create_layer(x, y,"Instances", obj_screenshake);
			}
		}
	//tether hitbox
	if collision_line(x + 10, y, room_width / 2, 0, obj_worm, false, true) && tetherState == tState.active {
		global.tether--;
		tetherHit = true;
		alarm[2] = 3;
		tetherState = tState.invul;
		audio_play_sound(snd_player_hit, 5, false);
		alarm[1] = iframes;
	}
	if collision_line(x + 10, y, room_width / 2, 0, obj_tetherBullet, false, true) && tetherState == tState.active {
			global.tether--;
			tetherState = tState.invul;
			audio_play_sound(snd_player_hit, 5, false);
			alarm[1] = iframes;
	}
	//enemy bullet collision
	if place_meeting(x, y, obj_enemyBullet) && playerState == ACTIVE {
		global.hp--
		var nearestBullet = instance_nearest(x, y, obj_enemyBullet);
		if instance_exists(nearestBullet) {
				hitX = nearestBullet.x;
				hitY = nearestBullet.y;
			}
		audio_play_sound(snd_player_hit, 5, false);
		instance_destroy(nearestBullet);
		playerState = INVUL;
		playerHit = true;
		alarm[3] = 3;
		alarm[0] = iframes;
		//instance_create_layer(x, y,"Instances", obj_screenshake);
	}

	//determine player facing
	if mouse_x <= x {
		playerFacing = pFacing.left;
	}
	else {
		playerFacing = pFacing.right;
	}

	if global.tether <= 0 {
		tetherState = tState.destroyed;
	}

	if tetherState == tState.destroyed {
		vSpd = 30;
		y += vSpd;
		//Game over if tether is destroyed and you're lower than the room height
		if y > room_height {
		y = 0;
		global.hp = global.maxHP;
		global.tether = global.maxHP;
		room_restart();
		}
		
	}
	if global.hp <= 0 {
		//GAME_STATE = GAME_OVER;
		room_restart();
		global.hp = global.maxHP;
		global.tether = global.maxHP;
		//alarm[2] = 60;
	}
}

if (GAME_STATE == REST) || (GAME_STATE == INTRO)
	{
		keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
		keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
		keyActivate = keyboard_check(vk_space);
		
		inputDirection = point_direction(0,0,keyRight-keyLeft,0);
		inputMagnitude = (keyRight - keyLeft != 0);
		
		//Movement
		hSpeed = lengthdir_x(inputMagnitude * runSpeed, inputDirection);
		
		x+= hSpeed;
		
		// Update Sprite Index
		var _oldSprite = sprite_index;
		if (inputMagnitude != 0)
		{
				direction = inputDirection;
				sprite_index = spriteRun;
		} else sprite_index = spriteIdle;
		if (_oldSprite != sprite_index) localFrame = 0;
		
		// Update Image Index
		PlayerAnimateSprite();
		
		
		// Below will eventually be used to activate NPCs or sign posts
		// To trigger dialogues or whatever. This code will activate
		// the script and arguments attached to the entities (NPCs or signs)
		// These entity's are all children of par_entity.
		
		// if (keyActivate)
		// {
		//	var _activateX = lengthdir_x(10, direction);
		//	var _activateY = lengthdir_y(10, direction);
		//	activate = instance_position(x+_activateX, y+_activateY, par_entity);
		//	
		//	if (activate.entityActivateScript != -1) 
		//	{
		//		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		//		
		//		if (activate.entityNPC)
		//		{
		//			with (activate)
		//			{
		//				direction = point_direction(x,y,other.x,other.y);
		//				image_index = CARDINAL_DIR;
		//			}
		//		}
		//	}
		//  }
	}