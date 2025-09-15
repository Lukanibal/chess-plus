var _y := white? y - 64: y + 64;




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
	
	if(white)
	{
		for(var _i = 0; _i < _count; _i ++)
		{
			if(instance_place(x, _y, [objTileBlack, objTileWhite]))
			{
				var _inst_check := instance_place(x, _y, objPieceParent)
				if(_inst_check == noone)
				{
					array_push(spots, instance_create_depth(x, _y, depth, objPosition, {parent_id: id}));
					_y -= 64;
				}
				else 
				{
					break;
				}
			}
		}
	}
	else 
	{
		for(var _i = 0; _i < _count; _i ++)
		{
			if(instance_place(x, _y, [objTileBlack, objTileWhite]))
			{
				var _inst_check := instance_place(x, _y, objPieceParent)
				if(_inst_check == noone)
				{
					array_push(spots, instance_create_depth(x, _y, depth, objPosition, {parent_id: id}));
					_y += 64;
				}
				else 
				{
					break;
				}
			}
		}
	}
	
}