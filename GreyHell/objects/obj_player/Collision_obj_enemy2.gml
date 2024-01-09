/// @description Insert description here
// You can write your code in this editor
if invincibility_timer <= 0
{
	var _damage = 35
	audio_play_sound(snd_hitHurt,90,false);
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
	invincibility_timer = 100
}


