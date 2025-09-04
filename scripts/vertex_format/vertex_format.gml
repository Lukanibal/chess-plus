//===============model stuff================================
//Vertex format: data must go into vertex buffers in the order defined by this
vertex_format_begin();
vertex_format_add_position_3d();	//3 x (32 float) 12bytes
vertex_format_add_normal();			//3 x (32 float) 12bytes 
vertex_format_add_texcoord();		// 2 x (32 float) 8bytes
vertex_format_add_color();			//4 x (8 int)  4bytes
global.vertex_format = vertex_format_end(); //36 bytes