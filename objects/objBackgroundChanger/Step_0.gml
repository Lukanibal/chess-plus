if( point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_width) && mouse_check_button_pressed(mb_left))
{
	if(global.background < 2)
	{
		global.background ++;
	}
	else 
	{
		global.background := 0;
	}
	global.background := clamp(global.background, 0, 2);
}

image_index := global.background;