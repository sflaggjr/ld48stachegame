//Drop this in your draw step to see Mouse X and within the window
function Script6(){
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	draw_text(mouseX -30, mouseY - 20, string(mouseX) + " " + string(mouseY));
}