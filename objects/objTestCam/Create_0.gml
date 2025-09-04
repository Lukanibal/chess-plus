look_dir := 90;
look_pitch := 45;
look_dist := 150;

cam := camera_create_view(x, y, 500, 500);
view_camera[2] := cam;

display_reset(8, true);
layer_force_draw_depth(true, 0);

gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(20);




shader_color := shader_get_uniform(shdColorTinter, "targetColor");
shader_strength := shader_get_uniform(shdColorTinter, "tintStrength");