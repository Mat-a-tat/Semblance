/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
enemy_health -= global.bullet_damage
if enemy_health <= 0
{
	instance_destroy();
}
//effect_create_above(ef_explosion, x, y, 1, c_white);



