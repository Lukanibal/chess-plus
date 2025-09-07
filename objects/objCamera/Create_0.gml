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
gpu_set_alphatestref(0);
gpu_set_tex_filter(true);


gpu_set_tex_mip_enable(mip_markedonly);

background_surf = surface_create(display_get_gui_width(), display_get_gui_height());


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

uTime = shader_get_uniform(shdHeatWaves, "Time");
uTexel = shader_get_uniform(shdHeatWaves, "Texel");


tex := sprite_get_texture(sprBackground, 0);

//shader_uniform_aa := shader_get_uniform(shdAA, )
