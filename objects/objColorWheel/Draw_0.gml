var _sprW := sprite_width;
var _sprH := sprite_height;



if(surface_exists(surf))
{
	surface_set_target(surf);

	shader_set(shdColorTinter);

	shader_set_uniform_f(shader_color, 0., 0., 0.);
	shader_set_uniform_f(shader_strength, darkness);
	
	draw_sprite(sprColorPicker, 0, 0, 0);
	
	shader_reset();
	surface_reset_target();
	
	draw_surface(surf, x, y);
}
else 
{
	surf := surface_create(sprite_width, sprite_height);
}


