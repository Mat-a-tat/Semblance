/// @description Insert description here
// You can write your code in this editor
if (shake > 0)
{
    draw_sprite_ext( sprite_index, image_index, x + irandom_range(-shake, shake), y + irandom_range(-shake, shake), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
    draw_self();
}

