/// Draw the U
// You can write your code in this editor
if GAME_STATE == PLAY {
		var hudX = window_get_x() + 800;
		var hudY = window_get_y();
		var hudH = camera_get_view_height(view_camera[0]);
		var hudW = camera_get_view_width(view_camera[0]);
		draw_set_color(c_black);
		draw_rectangle(hudX, hudY, hudW , hudH, false);
		draw_set_color(c_red);
		draw_text(1024 + 32, hudY + 64, "Armor: " + string(global.hp));
		draw_text(1024 + 32, hudY + 128, "Tether: " + string(global.tether));
		draw_set_color(c_white);
		draw_rectangle(hudX, hudY, hudW, hudH, true);
}