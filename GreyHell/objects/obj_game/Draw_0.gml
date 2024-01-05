/// @description Insert description here
// You can write your code in this editor
switch (room)
{
case rm_level_tut1:
    draw_text(draw_x, gui_h-280, "WASD to move.");
	draw_text(draw_x, gui_h-260, "Return to the light.");
	draw_text(draw_x, gui_h-240, "Recover in the light.");
	
    break;
	
case rm_level1:
    draw_text(draw_x, gui_h-280, "Click to shoot.");
	draw_text(draw_x, gui_h-260, "Harm not the light.");
	draw_text(draw_x, gui_h-240, "Reload in the light.");
    break;
	
case rm_level2:
    draw_text(draw_x, gui_h-280, "They can harm the light.");
	draw_text(draw_x, gui_h-260, "Protect the light.");
	draw_text(draw_x, gui_h-240, "By any means.");
    break;
	
case rm_level3:
    draw_text(draw_x, gui_h-280, "Protect the light.");
	draw_text(draw_x, gui_h-260, "For it protects you.");
	draw_text(draw_x, gui_h-240, "You are now ready.");
    break;
	
case rm_level99:
    draw_text(draw_x, gui_h-200, "You have learned all.");
	draw_text(draw_x, gui_h-180, "Return to the dark.");
	draw_text(draw_x, gui_h-160, "Rest.");
    break;

case rm_start:
    
    break;

case rm_win:
    
    break;

case rm_gameover:
    
    break;
}

