var display_width = display_get_gui_width();
var display_height = display_get_gui_height();


if !surface_exists(background_surf){
	background_surf = surface_create(display_width, display_height);
}


surface_set_target(background_surf);
surface_depth_disable(true);
draw_clear(c_fuchsia);
draw_sprite_stretched(sprBackground,0,0,0, display_width, display_height);
surface_reset_target();	
surface_copy(application_surface,0,0,background_surf);


camera_apply( cam);

	//draw_clear_alpha(c_black, 0.0);
	
	//d3d_draw_block( -1000, -1000, 1000, 2048, 2048, -2048, tex, 1, 1);
	//d3d_draw_sphere_simple(512, 512, 0, 4096, tex);
	
	
	shader_set(shdColorTinter);
	
	shader_set_uniform_f(shader_color, color_get_red(global.board_color)/255, color_get_green(global.board_color)/255, color_get_blue(global.board_color)/255);
	shader_set_uniform_f(shader_strength, 0.5);
	
	with(objTileBlack)
	{
		event_perform(ev_draw, 0);
	}
	
	with(objTileWhite)
	{
		event_perform(ev_draw, 0);
	}
	
	shader_set_uniform_f(shader_color, color_get_red(global.game_color)/255, color_get_green(global.game_color)/255, color_get_blue(global.game_color)/255);
	shader_set_uniform_f(shader_strength, 0.5);

	with(objPieceParent)
	{
		event_perform(ev_draw, 0);
	}
	shader_reset();
	
