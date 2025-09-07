if(!active && array_length(spots) > 0)
{
	array_foreach(spots, function(_value, _index)
	{
		instance_destroy(_value);
	})
	spots := [];
}

//I'm sure there's a way to use loops to do this, but it escaped me

if(active && array_length(spots) == 0)
{
	
	
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
	
	if(instance_place(x-128, y-64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x-128, y-64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x-128, y-64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x-128, y-64, depth, objPosition, {parent_id: id}));
		}
		
	}
	
	if(instance_place(x-128, y+64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x-128, y+64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x-128, y+64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x-128, y+64, depth, objPosition, {parent_id: id}));
		}
	}
	
	if(instance_place(x-64, y+128, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x-64, y+128, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x-64, y+128, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x-64, y+128, depth, objPosition, {parent_id: id}));
		}
	}
	
	if(instance_place(x+64, y-128, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x+64, y-128, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x+64, y-128, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x+64, y-128, depth, objPosition, {parent_id: id}));
		}
	}
	
	if(instance_place(x+128, y-64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x+128, y-64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x+128, y-64, depth, objPosition, {parent_id: id}));
			}
		} 
		else 
		{
			array_push(spots, instance_create_depth(x+128, y-64, depth, objPosition, {parent_id: id}));
		}
	}
	
	if(instance_place(x+64, y+128, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x+64, y+128, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x+64, y+128, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x+64, y+128, depth, objPosition, {parent_id: id}));
		}
	}
	
	if(instance_place(x+128, y+64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x+128, y+64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x+128, y+64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x+128, y+64, depth, objPosition, {parent_id: id}));
		}
	}
	
}