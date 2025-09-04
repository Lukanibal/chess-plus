function ColRay(origin, direction) constructor {
    self.origin = origin;                   // Vec3
    self.direction = direction.Normalize(); // Vec3
	
	static DebugDraw = function() {
        static draw_vertex_add_point = function(vbuff, x, y, z, colour=c_lime) {
            vertex_position_3d(vbuff, x, y, z);
            vertex_normal(vbuff, 0, 0, 1);
			vertex_texcoord(vbuff, 0,0);
            vertex_colour(vbuff, colour, 1);
        };
        
        var vbuff = vertex_create_buffer();
        vertex_begin(vbuff, global.vertex_format);
        
        draw_vertex_add_point(vbuff, self.origin.x, self.origin.y, self.origin.z, c_lime);
        draw_vertex_add_point(vbuff, 
		self.origin.x + (self.direction.x * self.direction.Magnitude()),
		self.origin.y + (self.direction.y * self.direction.Magnitude()),
		self.origin.z + (self.direction.z * self.direction.Magnitude()),
		c_blue);
        
        vertex_end(vbuff);
        vertex_submit(vbuff, pr_linelist, -1);
        vertex_delete_buffer(vbuff);
    };
    
    static CheckPoint = function(point, hit_info) {
        return point.CheckRay(self, hit_info);
    };
    
    static CheckSphere = function(sphere, hit_info) {
        return sphere.CheckRay(self, hit_info);
    };
    
    static CheckAABB = function(aabb, hit_info) {
        return aabb.CheckRay(self, hit_info);
    };
    
    static CheckPlane = function(plane, hit_info) {
        return plane.CheckRay(self, hit_info);
    };
    
    static CheckOBB = function(obb, hit_info) {
        return obb.CheckRay(self, hit_info);
    };
    
    static CheckCapsule = function(capsule, hit_info) {
        return capsule.CheckRay(self, hit_info);
    };
    
    static CheckTriangle = function(triangle, hit_info) {
        return triangle.CheckRay(self, hit_info);
    };
    
    static CheckMesh = function(mesh, hit_info) {
        return mesh.CheckRay(self, hit_info);
    };
    
    static CheckModel = function(model, hit_info) {
        return model.CheckRay(self, hit_info);
    };
    
    static CheckRay = function(ray, hit_info) {
        return false;
    };
    
    static CheckLine = function(line, hit_info) {
        return false;
    };
    
    static NearestPoint = function(vec3) {
        var diff = vec3.Sub(self.origin);
        var t = max(diff.Dot(self.direction), 0);
        var scaled_dir = self.direction.Mul(t);
        return self.origin.Add(scaled_dir);
    };
    
    static GetMin = function() {
        return undefined;
    };
    
    static GetMax = function() {
        return undefined;
    };
}