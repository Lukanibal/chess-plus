surf := surface_create(sprite_width, sprite_height);

darkness := 0.;

shader_color := shader_get_uniform(shdColorTinter, "targetColor");
shader_strength := shader_get_uniform(shdColorTinter, "tintStrength");

variable := "game_color"