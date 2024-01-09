/// @description Insert description here
// You can write your code in this editor


instance_create_layer(x, y, "Instances", chosen_enemy);
//we increase the time the spawner 'recharges' after a big. might change to a flat time later.
if chosen_enemy = enemy_pool[1]
{
	alarm[0] = ((room_speed * 3) + random(room_speed * 2))* big_time_multiplier;
}
else
{
	alarm[0] = (room_speed * 3) + random(room_speed * 2);
}

// we place this after the first spawning to guarantee our first enemy is a small one
if chosen_enemy == enemy_pool[1]
{
	chosen_enemy = enemy_pool[0]
}
// the above makes certain to have a small after a big
else
{
	rand_num = random(array_length(enemy_pool))
	chosen_enemy = enemy_pool[rand_num]
}
if chosen_enemy == enemy_pool[0]
{
	small_count += 1
	if small_count == 2
	{
		chosen_enemy = enemy_pool[1]
		small_count = 0
	}
}

