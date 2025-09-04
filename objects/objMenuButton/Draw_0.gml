if(mouse_over && !label)
{
	draw_set_font(fntURWGothicDemiOblique);
}
else 
{
	draw_set_font(fntURWGothicDemi);
}

draw_set_color(c_black);
draw_text(x-2, y, text);
draw_text(x, y+2, text);
draw_text(x-2, y+2, text);

draw_set_color(c_white)
draw_text(x, y, text);