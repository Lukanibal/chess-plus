points := 0;
pattern := new Pattern(0, 2, 0);
selected := false;

///pawn specifics
has_moved := false;///when has moved, movement becomes 1
image_blend := blend;

event_inherited();


spots := [];

draw := function()
{
	_mat := matrix_build(0, 0, 1, 0, 0, 0, 1, 1, 1);
	matrix_set(matrix_world, _mat);
	
	array_foreach(spots, function(_val, _ind)
	{
		with(_val)
		{
			draw_sprite_ext(sprite_index, 0, x, y, 0.5, 0.5, 0, c_white, 1.);
		}
	});
	
	matrix_set(matrix_world, matrix_build_identity());
}