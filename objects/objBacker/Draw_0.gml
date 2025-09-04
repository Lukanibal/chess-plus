direction := -(point_direction(self.x, self.y, objCamera.x, objCamera.y) + 90);

z := -objCamera.z;
x := lengthdir_x(objCamera.look_dist*2, objCamera.look_dir);
y := lengthdir_y(objCamera.look_dist*2, objCamera.look_dir);



var _mat := matrix_build(x, y, 0, 90, direction, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

draw_sprite(sprite_index, 0, 0, 0);

matrix_set(matrix_world, matrix_build_identity());