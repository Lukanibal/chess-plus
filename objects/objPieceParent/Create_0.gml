depth := z;

///Collisions from Alyssa <3
coll_shape := NewColAABBFromMinMax(
	new Vector3(self.x-20, self.y-20, z),
	new Vector3(
	self.x + 20,
	self.y + 20,
	self.z + 44)
);

object = new ColObject(coll_shape, self.id, COLLISION_GROUP_WORLD);
global.collision_world.Add(object);

move_shape := function()
{
	self.coll_shape := NewColAABBFromMinMax(
	new Vector3(self.x-20, self.y-20, z),
	new Vector3(
	self.x + 20,
	self.y + 20,
	self.z + 44)
	);
	object = new ColObject(coll_shape, self.id, COLLISION_GROUP_WORLD);
	global.collision_world.Update(self.object);

}

get_captured := function()
{
	
	var _initial := string_char_at(object_get_name(self.object_index), 4);
	if(object_index == objKnight)
	{
		_initial := "N";
	}
	
	
	array_push(white ? global.black_captures : global.white_captures, _initial);
	global.active.goto := [x, y]
	global.active.active := false;
	global.active := noone;
	instance_destroy();
}

check_check := function()
{
	objChessController.checking := id;
	
	var _count := instance_number(objPieceParent);
	for(var _i := 0; _i < _count; _i++)
	{
		var _inst := instance_id_get(_i);
		with(_inst)
		{
			active := true;
			call_later(1, time_source_units_frames, function()
			{
				active := false;
			})
		}
	}
}

captor := noone;

goto := [x, y];

dir := 90;

