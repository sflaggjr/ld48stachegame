/// @description Insert description here
// You can write your code in this editor
var xMargin = 30;
var yMargin = 5;
button1 = 0;
button2 = 0;
button3 = 0;
button4 = 0;
button5 = 0;

//Draw button UI for the main menu
if GAME_STATE == MAIN_MENU{
	//button 1 X/Y
	var button1X = 480;
	var button1Y = 680;
	//button 2 X/Y
	var button2X = 800;
	var button2Y = 680;
	//Button 3 X/Y
	//var button3X = 1000;
	//var button3Y = 680;
	draw_sprite(spr_button, 0, button1X, button1Y);
	draw_sprite(spr_button, 0, button2X, button2Y);
	//draw_sprite(spr_button, 0, button3X, button3Y);
	//mouse capture
	var x1_b1 = button1X - sprite_get_xoffset(spr_button);
	var y1_b1 = button1Y - sprite_get_yoffset(spr_button);
	var x2_b1 = x1_b1 + sprite_get_width(spr_button);
	var y2_b1 = y1_b1 + sprite_get_height(spr_button);
	var x1_b2 = button2X - sprite_get_xoffset(spr_button);
	var y1_b2 = button2Y - sprite_get_yoffset(spr_button);
	var x2_b2 = x1_b2 + sprite_get_width(spr_button);
	var y2_b2 = y1_b2 + sprite_get_height(spr_button);
	//var x1_b3 = button3X - sprite_get_xoffset(spr_button);
	//var y1_b3 = button3Y - sprite_get_yoffset(spr_button);
	//var x2_b3 = x1_b3 + sprite_get_width(spr_button);
	//var y2_b3 = y1_b3 + sprite_get_height(spr_button);
//Button interactivity	
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
		/*else if mouseX >= x1_b3 && mouseX <= x2_b3 && mouseY >= y1_b3 && mouseY <= y2_b3 {
		buttonState = bState.hovered;
		button3 = 1;	
	}*/
	
	//draw button text
	draw_text(x1_b1 + xMargin, y1_b1 + yMargin, "Play");
	draw_text(x1_b2 + xMargin, y1_b2 + yMargin, "Quit");
	//draw_text(x1_b3 + xMargin, y1_b3 + yMargin, "The Room - Oh hi Austin"); //delete this later
}
//Button UI for the campsite
if GAME_STATE == REST {
	if instance_exists(obj_crate) {
		if obj_crate.contact && obj_crate.used = false {
			var button1X = obj_crate.x - 85;
			var button1Y = obj_crate.y - 200;
			var button2X = obj_crate.x + 75;
			var button2Y = obj_crate.y - 200;
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
		//Button interactivity
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
			draw_text(x1_b1 + xMargin, y1_b1 + yMargin, "Armor");
			draw_text(x1_b2 + xMargin, y1_b2 + yMargin, "Tether");
		}
	}
}
