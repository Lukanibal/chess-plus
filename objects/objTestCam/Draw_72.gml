var _look_at_x := 1760;
var _look_at_y := 352;

x := _look_at_x - look_dist * dcos(look_dir);
y := _look_at_y + look_dist * dsin(look_dir);



var _view_mat := matrix_build_lookat(x, y, z, _look_at_x, _look_at_y , 0, 0, 0, 1);
var _proj_mat := matrix_build_projection_perspective_fov(-70, -1, 1, 2500);

camera_set_view_mat( cam, _view_mat);
camera_set_proj_mat( cam, _proj_mat);
