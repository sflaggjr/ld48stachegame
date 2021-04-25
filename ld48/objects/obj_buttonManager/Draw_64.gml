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

if global.gameState = gState.rest {
	button1 = 0;
	button2 = 0;
	var button1X = 250;
	var button1Y = viewY;
	var button2X = 450;
	var button2Y = viewY;
	draw_sprite(spr_button, 0, button1X, button1Y);
	draw_sprite(spr_button, 0, button2X, button2Y);
	var x1_b1 = button1X - sprite_get_xoffset(spr_button);
	var y1_b1 = button1Y - sprite_get_yoffset(spr_button);
	var x2_b1 = x1_b1 + sprite_get_width(spr_button);
	var y2_b1 = y1_b1 + sprite_get_height(spr_button);
	var x1_b2 = button2X - sprite_get_xoffset(spr_button);
	var y1_b2 = button2Y - sprite_get_yoffset(spr_button);
	var x2_b2 = x1_b2 + sprite_get_width(spr_button);
	var y2_b2 = y1_b2 + sprite_get_height(spr_button);
	if mouseX >= x1_b1 && mouseX <= x2_b1 && mouseY >= y1_b1 && mouseY <= y2_b1 {
		buttonState = bState.hovered;
		button1 = 1;
		//draw_text(mouseX, mouseY, "Button 1");
	}
	else if mouseX >= x1_b2 && mouseX <= x2_b2 && mouseY >= y1_b2 && mouseY <= y2_b2 {
		buttonState = bState.hovered;
		button2 = 1;
		//draw_text(mouseX, mouseY, "Button 2");	
	}
	draw_text(x1_b1 + xMargin, y1_b1 + yMargin, "HP");
	draw_text(x1_b2 + xMargin, y1_b2 + yMargin, "Tether");
}