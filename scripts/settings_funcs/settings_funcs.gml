

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
	//layer_set_visible("layerMenu", !layer_get_visible("layerMenu"));
	layer_set_visible("layerText", !layer_get_visible("layerText"));
	objWaver.visible := !objWaver.visible;
}


function toggle_menu()
{
	view_set_visible(0, !view_get_visible(0));
	view_set_visible(2, !view_get_visible(2));
	
	layer_set_visible("layerMenu", !layer_get_visible("layerMenu"));
	
	objCamera.visible := !objCamera.visible
}

function back_to_menu()
{
	room_goto(rmMenu);
}

function selcet_pieces_color()
{
	objColorWheel.variable := "game_color";
}

function selcet_board_color()
{
	objColorWheel.variable := "board_color";
}