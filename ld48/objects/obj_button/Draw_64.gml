/// @description Insert description here
// You can write your code in this editor
if buttonState = bState.depressed {
draw_rectangle_color(x, y, buttonWidth, buttonHeight, c_yellow, c_yellow, c_yellow, c_yellow, true);
}
else {
	draw_rectangle_color(x, y, buttonWidth, buttonHeight, c_red, c_red, c_red, c_red, true);
}
