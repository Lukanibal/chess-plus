

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

	/*
	if(instance_place(x-64, y-128, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x-64, y-128, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x-64, y-128, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x-64, y-128, depth, objPosition, {parent_id: id}));
		}
		
	}
	*/
	
	
	//right of piece
	for(var _i := x; _i < room_width; _i += 64)
	{
		if(instance_place(_i, y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_i, y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_i, y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_i, y, depth, objPosition, {parent_id: id}));
			}
			
		}
	}
	
	///left
	for(var _i := x; _i > 0; _i -= 64)
	{
		if(instance_place(_i, y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_i, y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_i, y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_i, y, depth, objPosition, {parent_id: id}));
			}
			
		}
	}
	
	///VERTICAL
	for(var _i := y; _i < room_width; _i += 64)
	{
		if(instance_place(x, _i, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(x, _i, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(x, _i, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(x, _i, depth, objPosition, {parent_id: id}));
			}
			
		}
	}
	
	for(var _i := y; _i > 0; _i -= 64)
	{
		if(instance_place(x, _i, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(x, _i, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(x, _i, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(x, _i, depth, objPosition, {parent_id: id}));
			}
			
		}
	}
	
}



