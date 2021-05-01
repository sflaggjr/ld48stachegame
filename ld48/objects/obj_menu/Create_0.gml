/// @description Menu Data
// You can write your code in this editor
//Some menu stuff
enum menu_page {
	main,
	audio,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	toggle,
	input
}

//create menu pages
ds_menu_main = CreateMenuPage(
	["RESUME",		menu_element_type.script_runner, ResumeGame],
	["AUDIO",		menu_element_type.page_transfer, menu_page.audio],
	["EXIT GAME",	menu_element_type.script_runner, ExitGame]
);

ds_menu_audio = CreateMenuPage(
	["MASTER",	menu_element_type.slider,			ChangeVolume,			0.2,	[0,1]],
	["SOUNDS",	menu_element_type.slider,			ChangeVolume,			0.5,	[0,1]],
	["MUSIC",	menu_element_type.slider,			ChangeVolume,			1,	[0,1]],
	["BACK",	menu_element_type.page_transfer,	menu_page.main]	
);

page = 0;
menu_pages = [ds_menu_main, ds_menu_audio];

var i = 0 array_len = array_length(menu_pages);
repeat(array_len){
	show_debug_message(array_len);
	menu_option[i] = 0;	
	i++;
};

inputting = false;