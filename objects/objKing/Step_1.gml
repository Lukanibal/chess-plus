
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
	

//up left
	if(instance_place(x - 64, y - 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x - 64, y - 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x - 64, y - 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x - 64, y - 64, depth, objPosition, {parent_id: id}));
		}
		
	}	

//left

	if(instance_place(x - 64, y, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x - 64, y, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x - 64, y, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x - 64, y, depth, objPosition, {parent_id: id}));
		}
		
	}


//left down

	if(instance_place(x - 64, y + 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x - 64, y + 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x - 64, y + 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x - 64, y + 64, depth, objPosition, {parent_id: id}));
		}
		
	}


//up

	if(instance_place(x, y - 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x, y - 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x, y - 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x, y - 64, depth, objPosition, {parent_id: id}));
		}
		
	}


//up right

	if(instance_place(x + 64, y - 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x + 64, y - 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x + 64, y - 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x + 64, y - 64, depth, objPosition, {parent_id: id}));
		}
		
	}


//right

	if(instance_place(x + 64, y, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x + 64, y, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x + 64, y, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x + 64, y, depth, objPosition, {parent_id: id}));
		}
		
	}

	//rightdown

	if(instance_place(x + 64, y + 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x + 64, y + 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x + 64, y + 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x + 64, y + 64, depth, objPosition, {parent_id: id}));
		}
		
	}
	
	//down

	if(instance_place(x, y + 64, [objTileBlack, objTileWhite]))	
	{
		var _inst_check := instance_place(x, y + 64, objPieceParent);
		if(_inst_check != noone)
		{
			if(_inst_check.white != self.white)
			{
				array_push(spots, instance_create_depth(x, y + 64, depth, objPosition, {parent_id: id}));
			}
		}
		else 
		{
			array_push(spots, instance_create_depth(x, y + 64, depth, objPosition, {parent_id: id}));
		}
		
	}
	
		
}
