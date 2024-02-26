/// @description Restart Game
// You can write your code in this editor
game_restart()

if gpu_get_texfilter()
{
	gpu_set_texfilter(false);
}
else
{
	gpu_set_texfilter(true);
}


