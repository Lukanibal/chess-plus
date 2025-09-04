points := 0;
pattern := new Pattern(0, 2, 0);
selected := false;

///pawn specifics
has_moved := false;///when has moved, movement becomes 1

image_blend := blend;
depth := z;


event_inherited();

draw := function()
{
	if(!has_moved)
	{
		
		_y := white ? y - 128 : y + 64;
		repeat(2)
		{
			draw_sprite_ext(sprPieceMask, 0, x, _y, 0.5, 0.5, 0, c_dkgray, 0.5);
			_y += 64;
		}
	}
}