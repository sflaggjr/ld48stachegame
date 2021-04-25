/// @description Insert description here
// You can write your code in this editor
if global.gameState == gState.play {
	if playerState != pState.dead {
	draw_self();
	}
	//Draw Tether
	if tetherState != tState.destroyed {
		if tetherState == tState.active {
			draw_line_width_color(x, y - 25, room_width / 2, 0, 4, c_white, c_white);
		}
		if tetherState = tState.invul {
			draw_line_width_color(x, y - 25, room_width / 2, 0, 4, c_teal, c_teal);
		}
	}
	else {
		image_angle = 45;
	}
	draw_text(x + 30, y + 10, global.tether);
	draw_set_color(c_red);
	draw_text(x - 30, y + 10, global.hp);


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
}
