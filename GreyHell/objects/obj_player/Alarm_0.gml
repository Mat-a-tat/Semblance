/// @description Insert description here
// You can write your code in this editor

var _start_time = global.timer
var _delay = 20
var _current_sprite = sprite_index

sprite_index = spr_enemy_void

if global.timer >= _start_time + _delay
{
	sprite_index = _current_sprite
}
if global.timer >= _start_time + (_delay *2)
{
	sprite_index = spr_enemy_void
}
if global.timer >= _start_time + (_delay *3)
{
	sprite_index = _current_sprite
}
