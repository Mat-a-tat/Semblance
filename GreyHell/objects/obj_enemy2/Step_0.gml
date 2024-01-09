
direction = point_direction(x,y,obj_player.x,obj_player.y);
//hue based changes work, but are computationally heavy and inconsistent
// old code left for arieving
//image_blend = make_colour_hsv(0, 0, hue);

if (global.player_lit == true)
{
	sprite_index = spr_enemy_void2;
	// hue += 5
}

if (global.player_lit == false)
{
	sprite_index = spr_enemy_cube2;
	// hue -= 5
}


