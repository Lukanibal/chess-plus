camera_set_view_mat( cam, matrix_build_lookat(x, y, z, room_width/2, room_height/2, 0, 0, 0, 1));
camera_set_proj_mat( cam, matrix_build_projection_perspective_fov(-70, -window_get_width() / window_get_height(), 1, 32000.0));
camera_apply( cam);