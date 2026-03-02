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
	var _inst1, _inst2;
	
	if(white)
	{
		
		_inst1 := instance_place(x - 64, y - 64, objPieceParent);
		_inst2 := instance_place(x + 64, y - 64, objPieceParent);
		
	}
	else 
	{
		_inst1 := instance_place(x - 64, y + 64, objPieceParent);
		_inst2 := instance_place(x + 64, y + 64, objPieceParent);
	}
	
	if(_inst1 != noone && _inst1.white != white)
	{
		array_push(spots, instance_create_depth(_inst1.x, _inst1.y, depth, objPosition, {parent_id: id}));
	}
	else 
	{
		_inst1 := noone;
	}
	
	if(_inst2 != noone && _inst2.white != white)
	{
		array_push(spots, instance_create_depth(_inst2.x, _inst2.y, depth, objPosition, {parent_id: id}));
	}
	else 
	{
		_inst2 := noone;
	}
	
	
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