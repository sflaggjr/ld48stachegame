/// @description Draw the UI
// You can write your code in this editor
var _vx = camera_get_view_x(view_camera[0]) + 800;
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
draw_set_color(c_black);
draw_rectangle(_vx, _vy, _vw, _vh, false);
draw_set_color(c_white);
draw_rectangle(_vx, _vy, _vw, _vh, true);
draw_text_color(_vx + 32, _vy + 64,"Armor: " + string(global.hp), c_red, c_red, c_red, c_red, 1);
draw_text_color(_vx + 32, _vy + 84,"Tether: " + string(global.tether), c_yellow, c_yellow, c_yellow, c_yellow, 1);

