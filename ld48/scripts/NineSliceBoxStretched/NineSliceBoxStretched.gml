// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NineSliceBoxStretched(sprite, x1, y1, x2, y2, index){
//@desc NineSliceBoxStretched(sprite, x1, y1, x2, y2)
///@arg sprite
///@arg x1 left
///@arg y1 top
///@arg x2 rigt
///@arg y2 bottom
///@arg index image index

var _size = sprite_get_width(argument[0]) / 3;
var _x1 = argument[1];
var _y1 = argument[2];
var _x2 = argument[3];
var _y2 = argument[4];
var _index = argument[5];
var _w = _x2 - _x1;
var _h = _y2 - _y1

//MIDDLE
draw_sprite_part_ext(argument[0], _index, _size, _size, 1, 1, _x1 + _size,_y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white,1);

//CORNERS
//TOP LEFT
draw_sprite_part(argument[0], _index, 0, 0, _size, _size, _x1, _y1);
//TOP RIGHT
draw_sprite_part(argument[0], _index, _size * 2, 0, _size, _size, _x1 + _w - _size, _y1);
//BOTTOM LEFT
draw_sprite_part(argument[0], _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
//BOTTOM RIGHT
draw_sprite_part(argument[0], _index, _size * 2, _size * 2, _size, _size, _x1 + _w - _size, _y1 + _h - _size);

//EDGES
//LEFT
draw_sprite_part_ext(argument[0], _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
//RIGHT
draw_sprite_part_ext(argument[0], _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
//TOP
draw_sprite_part_ext(argument[0], _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, 1);
//BOTTOM
draw_sprite_part_ext(argument[0], _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white,1);
}