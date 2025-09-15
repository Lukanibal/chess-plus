dir := -(point_direction(self.x, self.y, objCamera.x, objCamera.y) + 90);

if(x != goto[0] || y != goto[1])
{
	x := lerp(x, goto[0], 0.1);
	y := lerp(y, goto[1], 0.1);
	
	if(distance_to_point(goto[0], goto[1]) < 0.5)
	{
		x := goto[0];
		y := goto[1];
		move_shape();
		if(object_index == objKing)
		{
			check_check()
		}
	}
}

