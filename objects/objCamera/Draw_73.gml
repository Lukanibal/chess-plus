if(surface_get_width(application_surface) != window_get_width() ||
	surface_get_height(application_surface) != window_get_height())
	{
		surface_resize(application_surface, window_get_width(), window_get_height());
		display_set_gui_size(window_get_width(), window_get_height());
	}

