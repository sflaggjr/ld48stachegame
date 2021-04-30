/// @description Insert description here
// You can write your code in this editor
if GAME_STATE == PAUSE {
	input_up_p		= keyboard_check_pressed(ord("W"));
	input_down_p	= keyboard_check_pressed(ord("S"));
	input_right_p	= keyboard_check(ord("D"));	
	input_left_p	= keyboard_check(ord("A"));		
	input_enter_p	= keyboard_check_pressed(vk_enter);

	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

	if(inputting) {
		switch(ds_grid[# 1, menu_option[page]]) {				
			case menu_element_type.slider:
				switch(menu_option[page]) {
					case 1: if(!audio_is_playing(snd_player_hit)) audio_play_sound(snd_player_hit, 1, false); break;
				}
			
				var hinput = input_right_p - input_left_p;
				if(hinput != 0) {
					ds_grid[# 3, menu_option[page]] += hinput*0.01
					ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0,1);
					script_execute(ds_grid[#2 , menu_option[page]], ds_grid[#3 , menu_option[page]]);
				}
				break;	
		}
	} else {	
		var ochange = input_down_p - input_up_p;
		if(ochange !=0) {
			menu_option[page] += ochange;
			if(menu_option[page] > ds_height-1) {menu_option[page] = 0; }
			if(menu_option[page] < 0) {menu_option[page] = ds_height - 1; }
	
		}
	}

	if(input_enter_p) {
		switch(ds_grid[# 1, menu_option[page]]) {		
			case menu_element_type.script_runner: script_execute(ds_grid[#2 , menu_option[page]]); break;
			case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;	
			case menu_element_type.slider: if(inputting) {script_execute(ds_grid[#2 , menu_option[page]], ds_grid[#3 , menu_option[page]]);}
				inputting = !inputting;
				break;
		}
	
		//audio to switch menus
		}

}
