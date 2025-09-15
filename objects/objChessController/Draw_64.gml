_gui_width := display_get_gui_width();
_gui_height := display_get_gui_height();


array_foreach(global.white_captures, function(_value, _index)
{
	switch(_value)
	{
		case "P":
		{
			draw_sprite(sprPawnBlack, 0, 48 + (_index * 32), other._gui_height - 10);
			break;
		}
			
		case "R":
		{
			draw_sprite(sprRookBlack, 0, 48 + (_index * 32), other._gui_height - 10);
			break;
		}
			
		case "N":
		{
			draw_sprite(sprKnightBlack, 0, 48 + (_index * 32), other._gui_height - 10);
			break;
		}
			
		case "B":
		{
			draw_sprite(sprBishopBlack, 0, 48 + (_index * 32), other._gui_height - 10);
			break;
		}
			
		case "Q":
		{
			draw_sprite(sprQueenBlack, 0, 48 + (_index * 32), other._gui_height - 10);
			break;
		}
	}
})

array_foreach(global.black_captures, function(_value, _index)
{
	switch(_value)
	{
		case "P":
		{
			draw_sprite(sprPawn, 0, 48 + (_index * 32), 74);
			break;
		}
			
		case "R":
		{
			draw_sprite(sprRook, 0, 48 + (_index * 32), 74);
			break;
		}
			
		case "N":
		{
			draw_sprite(sprKnight, 0, 48 + (_index * 32), 74);
			break;
		}
			
		case "B":
		{
			draw_sprite(sprBishop, 0, 48 + (_index * 32), 74);
			break;
		}
			
		case "Q":
		{
			draw_sprite(sprQueen, 0, 48 + (_index * 32), 74);
			break;
		}
	}
})