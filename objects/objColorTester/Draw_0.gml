shader_set(shdColorTinter);

shader_set_uniform_f(shader_color, color_get_red(global.board_color)/255, color_get_green(global.board_color)/255, color_get_blue(global.board_color)/255);
shader_set_uniform_f(shader_strength, 0.3);

///draw board and pieces
draw_sprite(sprBoardBlack, 0, x, y);
draw_sprite(sprBoardWhite, 0, x+64, y);
draw_sprite(sprBoardWhite, 0, x, y+64);
draw_sprite(sprBoardBlack, 0, x+64, y+64);

shader_set_uniform_f(shader_color, color_get_red(global.game_color)/255, color_get_green(global.game_color)/255, color_get_blue(global.game_color)/255);
shader_set_uniform_f(shader_strength, 0.3);

draw_sprite(sprPawn, 0, x+32, y+96);
draw_sprite_ext(sprQueenBlack, 0, x+96, y+32, 1, 1, 0, c_white, 1);

shader_reset();