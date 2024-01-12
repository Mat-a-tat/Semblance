/// @description Insert description here
// You can write your code in this editor
gui_w = display_get_gui_width();
gui_h = display_get_gui_height()
gui_h = gui_h - 10
ammo_count = obj_player.ammo_count;
ammo_count_gui = ammo_count / 10
_xx = gui_w - 30
_yy = gui_h - 25
// custom cursor, that lags and dosent remove the dafault windows cursor. 

//cursor_sprite = spr_CustomCursor;
//Window_set_cursor(spr_CustomCursor) 