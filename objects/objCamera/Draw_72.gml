

var _look_at_x := room_width/2;
var _look_at_y := room_height/2;

x := _look_at_x - look_dist * dcos(look_dir);
y := _look_at_y + look_dist * dsin(look_dir);

var _view_mat := matrix_build_lookat(x, y, z, _look_at_x, _look_at_y , 0, 0, 0, 1);
var _proj_mat := matrix_build_projection_perspective_fov(-70, -(1366 / 768), 1, 32000.0);

camera_set_view_mat( cam, _view_mat);
camera_set_proj_mat( cam, _proj_mat);
///get the viewport variables
var _view_x, _view_y, _view_width, _view_height, _mouse_x, _mouse_y;

_mouse_x := display_mouse_get_x() - view_xport[0];
_mouse_y := display_mouse_get_y() - view_yport[0];

var _mouse := convert_2d_to_3d(_view_mat, _proj_mat, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0));

if(mouse_check_button_pressed(mb_left))
{
	var _inst := quickRaycast([objPieceParent],_mouse);
	if(_inst != noone)
	{
		with(objPieceParent)
		{
			active := false;
		}
		
		_inst.active := true;
	}
}

if(mouse_check_button_pressed(mb_left))
{
	var mouse_vector = screen_to_world(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _view_mat, _proj_mat);
	var ray = new ColRay(new Vector3(x, y, z), new Vector3(mouse_vector.x, mouse_vector.y, mouse_vector.z));
	var rayResult = global.collision_world.CheckRay(ray, COLLISION_GROUP_WORLD);
	
	if (rayResult != undefined){
		
		var _inst := instance_position(rayResult.point.x, rayResult.point.y, objPieceParent);
		if(_inst != noone)
		{
			with(objPieceParent)
			{
				active := false;
				image_blend := blend;
			}
			_inst.active := true;
			_inst.image_blend := c_green;
		}
	}
	global.collision_world.Remove(ray);
}
