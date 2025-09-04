look_dir := 90;
look_pitch := 45;
look_dist := 350;

cam := camera_create_view(x, y, 1366, 768);
view_camera[0] := cam;

display_reset(8, true);
layer_force_draw_depth(true, 0);

gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(20);


mouseX := mouse_x;
mouseY := mouse_y;
mouseZ := 0;

scalar := 0;
arr := [0, 0, 0, 0, 0, 0];
array := $"[{arr}]\r\n3 Direction Vars, 3 Origin Points";

surf_text := "";



surface_resize(application_surface, window_get_width(), window_get_height());
display_set_gui_size(window_get_width(), window_get_height());


shader_color := shader_get_uniform(shdColorTinter, "targetColor");
shader_strength := shader_get_uniform(shdColorTinter, "tintStrength");


shader_uniform_time = shader_get_uniform(shdStripes, "u_time");
shader_uniform_color1 = shader_get_uniform(shdStripes, "u_color1");
shader_uniform_color2 = shader_get_uniform(shdStripes, "u_color1");
shader_uniform_stripe_width = shader_get_uniform(shdStripes, "u_stripeWidth");

col1 := c_random;
col2 := c_random;
col3 := c_random;
col4 := c_random;

call_later(5, time_source_units_frames, function()
{
	col1 := merge_color(col1, c_random, 0.1);
	col2 := merge_color(col2, c_random, 0.1);
	col3 := merge_color(col3, c_random, 0.1);
	col4 := merge_color(col4, c_random, 0.1);
}, 
true );

tex := sprite_get_texture(sprBackground, 0);