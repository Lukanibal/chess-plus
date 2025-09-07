/*
if(keyboard_check_pressed(ord("P")))
{
	switch(global.aa)
	{
		case false:
		{
			global.aa := true
			display_reset(16, true);
			break;
		}
			
		case true:
		{
			global.aa := false
			display_reset(0, true);
			break;
		}
		
	}
}
*/


if(mouse_check_button(mb_right))
{
	window_mouse_set_locked(true);
	look_dir -= (window_mouse_get_delta_x()) / global.mouse_sensitivity;
    z += (window_mouse_get_delta_y()) / global.mouse_sensitivity;
}

if(mouse_check_button_released(mb_right))
{
	window_mouse_set_locked(false);
}

if(mouse_wheel_down())
{
	look_dist += global.mouse_sensitivity;
}

if(mouse_wheel_up())
{
	look_dist -= global.mouse_sensitivity;
}

look_dist := clamp(look_dist, 350, 500);

z := clamp(z, 35, 500);

if(keyboard_check_pressed(vk_escape))
{
	toggle_menu();
}