/// @description Draw text box
/// using this video as a reference: https://www.youtube.com/watch?v=BUxkMDTnxn8&ab_channel=ShaunSpalding

NineSliceBoxStretched(spr_textbox_strip4,x1,y1,x2,y2,background);
draw_set_font(fnt_textFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(message,1,textProgress);
draw_text_ext_transformed((x1+x2)/2,y1+8, _print,10,300, global.uiFontSize, global.uiFontSize, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed((x1+x2)/2, y1+7, _print,10,300, global.uiFontSize, global.uiFontSize, image_angle);