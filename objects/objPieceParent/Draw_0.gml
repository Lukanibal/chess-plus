


var _mat := matrix_build(self.x, self.y, self.z, 90, 0, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

draw_sprite(sprite_index, image_index, x, y);

matrix_set(matrix_world, matrix_build_identity());
