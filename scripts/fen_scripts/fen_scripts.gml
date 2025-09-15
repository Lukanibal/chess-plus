///was gonna use FEN and UCI, but JSON works

global.chesson := {};

function chesson_gen()
{
	global.chesson := {};
	
	var _count := instance_number(objPieceParent);
	
	for(var _i := 0; _i < _count; _i++)
	{ 
		var _inst := instance_id_get(_i);
		
		var _name := object_get_name(_inst.object_index);
		
		global.chesson[$ $"{_name}"] := {};
		global.chesson[$ $"{_name}"][$ "x"] := _inst.x;
		global.chesson[$ $"{_name}"][$ "y"] := _inst.y;
	}
	save_chesson();
} 

function save_chesson()
{
	var _file := file_text_open_write("local.chesson");
	
	var _string := json_stringify(global.chesson);
	
	file_text_write_string(_file, _string);
	file_text_writeln(_file);
	
	file_text_close(_file);
}