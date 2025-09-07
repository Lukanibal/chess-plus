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
	var _x := x-64;
	var _y := y-64;
	
	repeat(16)
	{
		if(instance_place(_x, _y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_x, _y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
			}
			
		}
		_x -= 64;
		_y -= 64;
	}
	
	_x := x+64;
	_y := y-64;
	
	repeat(16)
	{
		if(instance_place(_x, _y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_x, _y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
			}
			
		}
		_x += 64;
		_y -= 64;
	}
	
	_x := x+64;
	_y := y+64;
	
	repeat(16)
	{
		if(instance_place(_x, _y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_x, _y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
			}
			
		}
		_x += 64;
		_y += 64;
	}
	
	_x := x-64;
	_y := y+64;
	
	repeat(16)
	{
		if(instance_place(_x, _y, [objTileBlack, objTileWhite]))	
		{
			var _inst_check := instance_place(_x, _y, objPieceParent);
			if(_inst_check != noone)
			{
				if(_inst_check.white != self.white)
				{
					array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
					break;
				}
				else 
				{
					break;
				}
			}
			else 
			{
				array_push(spots, instance_create_depth(_x, _y, depth, objPosition, {parent_id: id}));
			}
			
		}
		_x -= 64;
		_y += 64;
	}
	/*
	for(var _i := x-64; _i > 0; _i -= 64)
	{
		
		for(var _j := y-64; _j > 0; _j -= 64)
		{
			if(instance_place(_i, _j, [objTileBlack, objTileWhite]))	
			{
				var _inst_check := instance_place(_i, _j, objPieceParent);
				if(_inst_check != noone)
				{
					if(_inst_check.white != self.white)
					{
						array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
						break;
					}
					else 
					{
						break;
					}
				}
				else 
				{
					array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
				}
				
			}
		}
	}

	
	for(var _i := x + 64; _i < room_width; _i += 64)
	{
		
		for(var _j := y - 64; _j > 0; _j -= 64)
		{
			if(instance_place(_i, _j, [objTileBlack, objTileWhite]))	
			{
				var _inst_check := instance_place(_i, _j, objPieceParent);
				if(_inst_check != noone)
				{
					if(_inst_check.white != self.white)
					{
						array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
						break;
					}
					else 
					{
						break;
					}
				}
				else 
				{
					array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
				}
				
			}
		}
	}

	for(var _i := x + 64; _i < room_width; _i += 64)
	{
		
		for(var _j := y + 64; _j < room_height; _j += 64)
		{
			if(instance_place(_i, _j, [objTileBlack, objTileWhite]))	
			{
				var _inst_check := instance_place(_i, _j, objPieceParent);
				if(_inst_check != noone)
				{
					if(_inst_check.white != self.white)
					{
						array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
						break;
					}
					else 
					{
						break;
					}
				}
				else 
				{
					array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
				}
				
			}
		}
	}


	for(var _i := x - 64; _i > 0; _i -= 64)
	{
		
		for(var _j := y + 64; _j < room_height; _j += 64)
		{
			if(instance_place(_i, _j, [objTileBlack, objTileWhite]))	
			{
				var _inst_check := instance_place(_i, _j, objPieceParent);
				if(_inst_check != noone)
				{
					if(_inst_check.white != self.white)
					{
						array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
						break;
					}
					else 
					{
						break;
					}
				}
				else 
				{
					array_push(spots, instance_create_depth(_i, _j, depth, objPosition, {parent_id: id}));
				}
				
			}
		}
	}
	*/
	
}