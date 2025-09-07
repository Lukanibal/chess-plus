shader_set(shdColorTinter);

shader_set_uniform_f(shader_color, color_get_red(global.board_color)/255, color_get_green(global.board_color)/255, color_get_blue(global.board_color)/255);
shader_set_uniform_f(shader_strength, 0.3);

with(objTileBlack)
{
	event_perform(ev_draw, 0);
}

with(objTileWhite)
{
	event_perform(ev_draw, 0);
}

shader_set_uniform_f(shader_color, color_get_red(global.game_color)/255, color_get_green(global.game_color)/255, color_get_blue(global.game_color)/255);
shader_set_uniform_f(shader_strength, 0.3);

with(objPieceParent)
{
	event_perform(ev_draw, 0);
}

shader_reset();