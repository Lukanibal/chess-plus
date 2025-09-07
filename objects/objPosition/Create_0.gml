coll_shape := NewColAABBFromMinMax(
	new Vector3(self.x-32, self.y-32, z),
	new Vector3(
	self.x + 32,
	self.y + 32,
	self.z + 5)
);

object = new ColObject(coll_shape, self.id, COLLISION_GROUP_WORLD);
global.collision_world.Add(object);