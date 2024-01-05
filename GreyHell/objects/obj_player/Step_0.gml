var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _horiz = _right - _left
var _vert = _down - _up
move_dir = point_direction(0,0,_horiz, _vert);

// setting and normalizing x and y speeds
var _speed = 0
var _input_level = point_distance( 0, 0, _horiz, _vert);
_input_level = clamp(_input_level, 0 ,1);
_speed = move_speed * _input_level;

var _xspeed = lengthdir_x(_speed, move_dir);
var _yspeed = lengthdir_y(_speed, move_dir); 

//collision
if place_meeting( x + _xspeed,y, obj_wall1)	
{
	_xspeed = 0;
}
if place_meeting( x, y + _yspeed, obj_wall1)	
{
	_yspeed = 0;
}

x += _xspeed;
y += _yspeed;

x = clamp(x,0, room_width - 10);
y = clamp(y,0,room_height - 10);

if(place_meeting(x , y, obj_lamp) || place_meeting(x , y, obj_lamp_small) )
{
	global.player_health += 1
	ammo_count = 6
	global.player_lit = true
}
else
{
	global.player_lit = false
}

//max health has no current functionallity. future proofing. 
//it is currently more complicated than using hard coded values
if(global.player_health >= (max_health*.76))
{
	sprite_index = spr_player_cube_100
}
if(global.player_health <= (max_health*.75) and global.player_health >= (max_health*.51))
{
	sprite_index = spr_player_cube_75
}
if(global.player_health <= (max_health*.50) and global.player_health >= (max_health*.26))
{
	sprite_index = spr_player_cube_50
}
if(global.player_health <= (max_health*.25))
{
	sprite_index = spr_player_cube_25
}
if(global.player_health <= 0)
{
	room_goto(rm_gameover)
}
		

//set as current for future proofing
var _current_bullet = obj_bullet


if (mouse_check_button_pressed(mb_left) and ammo_count > 0 and global.player_lit == false and dodge == false)
	{
	var _inst = instance_create_layer(x, y, "Instances", _current_bullet);
	_inst.direction = point_direction(x,y,mouse_x,mouse_y);
	ammo_count -= 1
	}
// reset lit status after firing check, prevents lockouts and infinite bullet
	
with(obj_gui)
	{
	ammo_count = obj_player.ammo_count;
	}

/* // debugg to force a death

if keyboard_check_pressed(vk_space)
{
	global.player_health = 0	
} 
*/ //

/*
//dodge stuff, janky and ill fitting 

timer -= 1
if (timer == 0)
{
	can_roll = true
}
if (keyboard_check_pressed(vk_space) and can_roll == true)
{
	//still named a roll, even if its a teleport
	can_roll = false
	dodge = true
	x += _xspeed *30;
	y += _yspeed *30;
	timer = 30
	//start timer
	dodge = false
}
*/

