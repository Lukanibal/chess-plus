var tex = sprite_get_texture(sprChessboard, 0);
shader_set(shdHeatWaves);
shader_set_uniform_f(uTime, current_time);
shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
draw_sprite_ext(sprChessboard, 0, x, y, 1, 1, 0, c_white, 1);
shader_reset();