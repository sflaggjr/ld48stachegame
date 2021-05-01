/// @description Draw the Menu
// You can write your code in this editor
//Declare some variables to be used
var gwidth = RESOLUTION_W;
var gheight = RESOLUTION_H;

var ds_grid = menu_pages[page]
var ds_height = ds_grid_height(ds_grid);
var y_buffer = 32;
var x_buffer = 16;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer));
var start_x = gwidth/2;


if GAME_STATE == PAUSE {
	var rtx = start_x + x_buffer, rty;

	//Draw Pause Menu "Back"
	var c = c_black;
	draw_rectangle_color(0, 0, gwidth, gheight, c,c,c,c, false);

	//Draw Elements on the left
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);

	var ltx = start_x - x_buffer, lty, xo;

	var yy = 0; 
	repeat(ds_height) {
		lty = start_y + (yy*y_buffer);
		c = c_white;
		xo = 0;
	
		if(yy == menu_option[page]) {
			c = c_orange;	
			xo = -(x_buffer/2);
		}
	
		draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c,c,c,c, 1);
		yy++;
	} 

	//Draw the dividing line
	draw_line(start_x, start_y, start_x, lty);

	}

	//Draw elements on the right
	draw_set_halign(fa_left);

	yy = 0; 
	repeat(ds_height) {
		rty = start_y + (yy*y_buffer);
	
		switch(ds_grid[# 1, yy]) {
			case menu_element_type.slider:
				var len = 64;
				var current_val = ds_grid[# 3, yy];
				var current_array = ds_grid[# 4, yy];
				var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
				c = c_white;
			
				draw_line_width(rtx, rty, rtx+len, rty, 2);
			
							if(inputting and yy == menu_option[page]) {c = c_yellow;}
				draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
				draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos * 100)) + "%", c,c,c,c,1);
			break;
		
		}	
	
		yy++;

		draw_set_valign(fa_top);
}




