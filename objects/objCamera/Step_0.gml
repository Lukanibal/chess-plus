if(keyboard_check(vk_up))
{
	y -= 5;
}

if(keyboard_check(vk_down))
{
	y += 5;
}

if(keyboard_check(vk_left))
{
	x -= 5;
}

if(keyboard_check(vk_right))
{
	x += 5;
}

if(keyboard_check(vk_shift))
{
	z --;
}

if(keyboard_check(vk_control))
{
	z ++;
}

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