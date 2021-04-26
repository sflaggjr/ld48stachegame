//If the game is in a play State, draw all the things!

if (global.gameState == gState.rest) || (global.gameState == gState.intro) {
	draw_self();
}
if global.gameState == gState.play {
	if playerState != pState.dead {
	draw_self();
	sprite_index = spr_player;
	}
	//Draw Tether
	if tetherState != tState.destroyed {
		if tetherState == tState.active {
			draw_line_width_color(x, y - 25, room_width / 2, 0, 4, c_white, c_white);
		}
		if tetherState = tState.invul {
			draw_line_width_color(x, y - 25, room_width / 2, 0, 4, c_teal, c_teal);
			draw_text(x + sprite_get_xoffset(spr_player), y - sprite_get_height(spr_player), "Tether Strength: " + string(global.tether));
		}
	}
	else {
		//if the player is falling to their death, make it look like a bad time.
		image_angle = 45;
	}
//Determine mouse position to show update the spite and muzzle flash
	if mouse_x < x && mouse_y < y {
		sprite_index = spr_playerUp;
		image_index = 0;
		if firing = true {
			image_index = 2;
			draw_circle_color(x - 20, y - 15, 15, c_white, c_yellow, false);
		}
	}
	if mouse_x > x && mouse_y < y {
		sprite_index = spr_playerUp;
		image_index = 1;
			if firing = true {
			image_index = 3;
			draw_circle_color(x + 20, y - 15, 15, c_white, c_yellow, false);
		}
	}
	if mouse_x < x && mouse_y > y {
		sprite_index = spr_player;
		image_index = 0;
			if firing = true {
			image_index = 2;
			draw_circle_color(x - 20, y + 15, 15, c_white, c_yellow, false);
		}
	}
	if mouse_x > x && mouse_y > y {
		sprite_index = spr_player;
		image_index = 1;
			if firing = true {
			image_index = 3;
			draw_circle_color(x + 20, y + 15, 15, c_white, c_yellow, false);
		}
	}
	if playerHit {
		draw_circle_color(hitX, hitY, 15, c_yellow, c_orange, false);
	}
	if playerState = pState.invul {
		draw_set_color(c_red);
		draw_text(x + sprite_get_xoffset(spr_player), y - sprite_get_height(spr_player), "Armor: " + string(global.hp));
	}
}

