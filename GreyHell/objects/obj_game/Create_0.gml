/// @description Insert description here
// You can write your code in this editor
global.timer = 1000;
//assign this here, for consistency
gui_w = display_get_gui_width();
gui_h = display_get_gui_height()
draw_x = gui_w-230
 
//shake stuff. rest is in step event.
global.shake = false;
shake_Dur = 5;
shake_Force = 1;
view_xview = 0
view_yview = 0

// set_resolution()
// currently does not work as inteded. 
