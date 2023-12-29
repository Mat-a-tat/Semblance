/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_enemy1))
{
	lamp_health -= 10;
	instance_destroy(other);
	image_blend = make_colour_hsv(0, 0, lamp_health);
	
	with (obj_lamp)
	{
		if(lamp_health < 180)
		{
			sprite_index = spr_lamp_cracked
		}
	}
	if(lamp_health < 150)
	{
		instance_destroy()
	}
}

