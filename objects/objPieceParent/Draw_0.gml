
var _mat := matrix_build(x, y, 0, 90, direction, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

draw_sprite_ext(sprite_index, image_index, 0, 0, 1, 1, 0, image_blend, 1.0);

_mat := matrix_build(0, 0, 1, 0, 0, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

if(variable_instance_exists(self, "draw") && is_callable(self.draw) && self.active)
{
	draw();
}

matrix_set(matrix_world, matrix_build_identity());
/*
draw_set_color(c_red);
if(variable_instance_exists(self, "coll_shape"))
coll_shape.DebugDraw();

draw_set_color(c_white);
*/