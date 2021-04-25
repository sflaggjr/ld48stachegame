/// @description Insert description here
// You can write your code in this editor
mouseOver = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, buttonWidth, buttonHeight);

if !mouseOver
    buttonState = bState.released;
else
{
    if mouse_check_button_pressed(mb_left)
    {
        buttonState = bState.depressed;
    }
    else if mouse_check_button_released(mb_left) and button_pressed
    {
        // action
        show_message("pressed");
    }
}