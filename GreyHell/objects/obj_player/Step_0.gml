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

if place_meeting( x + _xspeed,y, obj_lamp) or place_meeting( x, y + _yspeed, obj_lamp)
{
	player_health += 1
	ammo_count = 6
	lit = true
}

if place_meeting( x + _xspeed,y, obj_enemy1)
{
	player_health -= 1
}

//set as current to allow expansion of weapons
var _current_bullet = obj_bullet


if (mouse_check_button_pressed(mb_left) and ammo_count > 0 and lit == false)
	{
	var _inst = instance_create_layer(x, y, "Instances", _current_bullet);
	_inst.direction = point_direction(x,y,mouse_x,mouse_y);
	ammo_count -= 1
	}
// reset lit status after firing check, prevents lockouts and infinite bullet
lit = false
	
with(obj_gui)
	{
	ammo_count = obj_player.ammo_count;
	player_health = obj_player.player_health;
	}



