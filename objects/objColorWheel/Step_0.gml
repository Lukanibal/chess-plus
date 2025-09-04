if(point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
{
	if(mouse_check_button_released(mb_left))
	{
		window_set_cursor(cr_none);
		//global.game_color := surface_getpixel(surf, mouse_x - x, mouse_y - y);
		variable_global_set(variable, surface_getpixel(surf, mouse_x - x, mouse_y - y));
		
		window_set_cursor(cr_default);
		
		ini_open("settings.ini");
		ini_write_real("SETTINGS", variable, global[$ variable]);
		ini_close();
	}
	
	if(mouse_wheel_down())
	{
		darkness += 0.1;
	}
	
	if(mouse_wheel_up())
	{
		darkness -= 0.1;
	}
	darkness := clamp(darkness, 0.0, 1.0);
}