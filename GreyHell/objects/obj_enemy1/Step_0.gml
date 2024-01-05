/// @description Insert description here
// You can write your code in this editor
direction = point_direction(x,y,obj_player.x,obj_player.y);

if (global.player_lit == true)
{
	sprite_index = spr_enemy_void;
}

if (global.player_lit == false)
{
	sprite_index = spr_enemy_cube;
}


