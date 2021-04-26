/// @description Insert description here
// You can write your code in this editor
y += panRate;

if y > room_height {
	instance_destroy();
	show_message("CAMERA!! DELETED!!");
}
