/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_enemy1))
{
	_lamp_health -= 30;
	lamp_color = _lamp_health * 2.55
	instance_destroy(other);
	image_blend = make_colour_hsv(0, 0, lamp_color);
	
	
	with (obj_lamp)
	{
		if(_lamp_health < 70)
		{
			sprite_index = spr_lamp
		}
	}
	
	with (obj_lamp)
	{
		if(_lamp_health < 30)
		{
			sprite_index = spr_lamp_cracked
		}
	}
	if(_lamp_health < 0)
	{
		instance_destroy()
	}
}

