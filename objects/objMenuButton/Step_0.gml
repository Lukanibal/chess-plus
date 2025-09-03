mouse_over := point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height);

if(mouse_over && mouse_check_button_released(mb_left) && is_callable(action))
{
	call_later(1, time_source_units_frames, action);
}