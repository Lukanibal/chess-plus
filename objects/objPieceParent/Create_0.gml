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