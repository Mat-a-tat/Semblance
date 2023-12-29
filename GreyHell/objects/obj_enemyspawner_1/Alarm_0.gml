/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Instances", obj_enemy1);
// Set this to the position, layer and instance that you require to spawn
alarm[0] = (room_speed * 5) + random(room_speed * 5);


