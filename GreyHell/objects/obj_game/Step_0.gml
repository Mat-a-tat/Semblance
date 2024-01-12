/// @description Insert description here
// You can write your code in this editor
global.timer -= 1;
if (global.timer == 0)
{
    room_goto_next();
}
if keyboard_check_pressed(vk_escape) game_end();


if(global.shake)
{
    shake_Dur --;
    view_xview += choose(-shake_Force,shake_Force);
    view_yview += choose(-shake_Force,shake_Force);
    if(shake_Dur <= 0)
	{
        global.shake = false;
        shake_Dur = 5;
    }
}
else
{
    view_xview = approach(view_xview,0,0.3);
    view_yview = approach(view_yview,0,0.3);
}
