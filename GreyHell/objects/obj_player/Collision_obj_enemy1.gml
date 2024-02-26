/// @description Insert description here
// You can write your code in this editor


var _damage = 1
//audio_play_sound(snd_hitHurt,90,false);
if global.player_health - _damage <= 0
{
	if lights_grace == true
	{	
		global.player_health = 1
		lights_grace = false
	}
		else
	{
	global.player_health -= _damage
	}
}
else
{
	global.player_health -= _damage
}



