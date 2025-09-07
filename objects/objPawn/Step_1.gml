var _y := y;
if(!has_moved)
{
	_y := white ? y - 128 : y + 64;
}
else 
{
	_y := white ? y - 64 : y + 64;
}



if(!active && array_length(spots) > 0)
{
	array_foreach(spots, function(_value, _index)
	{
		instance_destroy(_value);
	})
	spots := [];
}



if(active && array_length(spots) == 0)
{
	var _count := has_moved ? 1 : 2;
	
	repeat(_count)
	{
		array_push(spots, instance_create_depth(x, _y, depth, objPosition, {parent_id: id}));
		_y += 64;
	}
	
}