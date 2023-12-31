
//timer for debugg purposes
//draw_text(gui_w - 70, gui_h - 125, global.timer);
draw_healthbar(gui_w - 95, gui_h - 15, gui_w - 15, gui_h - 5, global.player_health, c_black, c_dkgray, c_white, 1, true, true);

for (var i = 0; i < ammo_count; i += 1)
{
	var _xx = gui_w - 20 - (i * 15);
	var _yy = gui_h - 25
	draw_sprite(spr_bullet_hud, 0, _xx, _yy);

}
