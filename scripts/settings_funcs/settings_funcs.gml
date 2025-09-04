

function set_sensitivity( _increment)
{
	global.mouse_sensitivity += _increment;
	global.mouse_sensitivity := clamp(global.mouse_sensitivity, 1, 10);
	
	
	ini_open("settings.ini");
	ini_write_real("SETTINGS", "MOUSE", global.mouse_sensitivity);
	ini_close();
}

function toggle_settings()
{
	view_set_visible(0, !view_get_visible(0));
	view_set_visible(1, !view_get_visible(1));
	view_set_visible(2, !view_get_visible(2));
	
	objWaver.visible := !objWaver.visible;
}
