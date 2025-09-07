function close_game()
{
	game_end();
}

function image_credit()
{
	url_open("https://www.publicdomainpictures.net/en/view-image.php?image=190082&picture=tabuleiro-de-xadrez");
}

function play_game()
{
	room_goto(rmGame);
}



ini_open("settings.ini");

global.mouse_sensitivity := ini_read_real("SETTINGS", "MOUSE", 5);
global.game_color := ini_read_real("SETTINGS", "game_color", #E5B789);
global.board_color := ini_read_real("SETTINGS", "board_color", #E5B789);

ini_close();

global.collision_world = new ColWorld(new Vector3(-2000,-2000,-2000), new Vector3(2000,2000,2000), 4);




/// @func convert_2d_to_3d(viewMat, projMat, x, y)
function convert_2d_to_3d(V, P, _x, _y)
{
    /*
    Transforms a 2D coordinate (in window space) to a 3D vector.
    Returns an array of the following format:
    [dx, dy, dz, ox, oy, oz]
    where [dx, dy, dz] is the direction vector and [ox, oy, oz] is the origin of the ray.
    Works for both orthographic and perspective projections.
    Script created by TheSnidr
    */
    var mx = 2 * (_x / window_get_width()  - .5) / P[0];
    var my = 2 * (_y / window_get_height() - .5) / P[5];
    var camX = - (V[12] * V[0] + V[13] * V[1] + V[14] * V[2]);
    var camY = - (V[12] * V[4] + V[13] * V[5] + V[14] * V[6]);
    var camZ = - (V[12] * V[8] + V[13] * V[9] + V[14] * V[10]);
    if (P[15] == 0)
    {    //This is a perspective projection
        return [V[2]  + mx * V[0] + my * V[1],
                V[6]  + mx * V[4] + my * V[5],
                V[10] + mx * V[8] + my * V[9],
                camX,
                camY,
                camZ];
    }
    else
    {    //This is an ortho projection
        return [V[2],
                V[6],
                V[10],
                camX + mx * V[0] + my * V[1],
                camY + mx * V[4] + my * V[5],
                camZ + mx * V[8] + my * V[9]];
    }
}

enum MOUSE
{
	DIRX,
	DIRY, 
	DIRZ,
	ORIGINX,
	ORIGINY,
	ORIGINZ,
}

///@desc Cast a quick and dirty ray between the player and it's target
///@param {Asset.GMObject, Array, Id.Instance} _object the things to collide with
function quickRaycast(_object, _mouse)
{
	//var _colList := ds_list_create();//ewwwww
	//collision_line_list(_mouse[MOUSE.ORIGINX], _mouse[MOUSE.ORIGINY], _end_x, _end_y, objPieceParent, false, true, _colList, true);
	//var _len := ds_list_size(_colList) - 1;

	var _scalar := _mouse[MOUSE.ORIGINZ]/_mouse[MOUSE.DIRZ]; /// vectorScalar = -oz/dz
	var _mouse_x, _mouse_y, _mouse_z;
	_mouse_x := _mouse[MOUSE.DIRX] * _scalar + _mouse[MOUSE.ORIGINX];
	_mouse_y := _mouse[MOUSE.DIRY] * _scalar + _mouse[MOUSE.ORIGINY];
	_mouse_z := 0;
	
	show_debug_message($"Mouse 3D X:{_mouse_x}, Mouse 3D Y:{_mouse_y}, Mouse 3D Z:{_mouse_z}");
	
	/*
	if(instance_exists(the_mouse_boy))
	{
		the_mouse_boy.x := _mouse_x;
		the_mouse_boy.y := _mouse_y;
	}
	*/
	objCamera.mouseX := _mouse_x;
	objCamera.mouseY := _mouse_y;
	objCamera.arr := [_mouse[0], _mouse[1], _mouse[2], _mouse[3], _mouse[4], _mouse[5]];
	objCamera.scalar := _scalar;
	return instance_place(_mouse_x, _mouse_y, _object);
	
	/*
	mouseXIn3D = dx * vectorScalar + ox
	mouseYIn3D = dy * vectorScalar + oy
	mouseZIn3D = 0
	
	for(var _i := 0; _i < _len; _i++)
	{
	
		var _length_z := dsin(direction) * point_distance(_mouse[MOUSE.ORIGINX], _mouse[MOUSE.ORIGINY], _colList[| _i].x, _colList[| _i].y);
	
		if(_length_z >= _colList[| _i].z && _length_z < (_colList[| _i].z + 64))
		{
			with(objPieceParent)
			{
				active := false;
			}
			
			_colList[| _i].active := true;
			
			if(ds_exists(_colList, ds_type_list))
            {
        	   ds_list_destroy(_colList);
            }
			return true;
		}
	}	

	if(ds_exists(_colList, ds_type_list))
    {
	   ds_list_destroy(_colList);
    }
	*/
	
}



function draw_sprite_repeated( _sprite, _subimage, _x, _y, _repeat_x, _repeat_y)
{
	var _sWidth := sprite_get_width(_sprite);
	var _sHeight := sprite_get_height(_sprite);
	
	var _totalWidth := _sWidth * _repeat_x;
	var _totalHeight := _sHeight * _repeat_y;
	
	for(var _i := 0; _i < _totalWidth; _i += _sWidth)
	{
		for(var _j := 0; _j < _totalWidth; _j+= _sWidth)
		{
			draw_sprite(_sprite, _subimage, _i, _j);
		}
	}
}

#macro c_random make_color_rgb(random(255), random(255), random(255))


#macro DISCORD_APP_ID "1413253116580724978"

global.debug := false;

global.aa := false;


