/*shader_set(shdAA);
shader_set_uniform_f(shader_get_uniform(shdAA, "texture"), surface_get_texture(application_surface))

draw_surface(application_surface, 0, 0);

shader_reset();
var _texture := surface_get_texture(application_surface);
var _texel = shader_get_uniform(shdAA, "u_texel");
var _texW := texture_get_texel_width(_texture);
var _texH := texture_get_texel_height(_texture);

gpu_set_tex_filter(true);

//Apply FXAA
shader_set(shdAA);
shader_set_uniform_f(_texel, _texW, _texH);
draw_surface(application_surface, 0, 0);*/



if(surface_get_width(application_surface) != window_get_width() ||
	surface_get_height(application_surface) != window_get_height())
	{
		surface_resize(application_surface, window_get_width(), window_get_height());
		display_set_gui_size(window_get_width(), window_get_height());
	}



