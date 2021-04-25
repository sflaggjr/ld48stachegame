/// @description Insert description here
// You can write your code in this editor
var xMargin = 10;
var yMargin = 5;
if global.gameState = gState.menu {
	var button1X = 480;
	var button1Y = 680;
	draw_sprite(spr_button, 0, button1X, button1Y);
	//mouse capture
	var x1 = button1X - sprite_get_xoffset(spr_button);
	var y1 = button1Y - sprite_get_yoffset(spr_button);
	var x2 = x1 + sprite_get_width(spr_button);
	var y2 = y1 + sprite_get_height(spr_button);
	
	if mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2 {
		buttonState = bState.hovered;
		draw_text(mouseX, mouseY, "Hover");
	}
	//draw button text
	draw_text(x1 + xMargin, y1 + yMargin, "Play");
}