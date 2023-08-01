// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function SaveGame()
{
	var _saveData = array_create(0);
	_saveData[0] = oGameControl.maxScore;
	
	//Turn all this data into a JSON string and save it via a buffer
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "CapySave.uwu");
	buffer_delete(_buffer);
	
	show_debug_message("Game saved" + _string);
}

function LoadGame()
{
	if(file_exists("CapySave.uwu"))
	{
		//Load the content
		var _buffer = buffer_load("CapySave.uwu");
		//Reads the content
		var _string = buffer_read(_buffer, buffer_string);

		buffer_delete(_buffer);
		//JsonParse takes a json struct and converts into an array 		
		var _loadData = json_parse(_string);
		
		//Take the pontuation and then put into the score Obj
		with(oGameControl)	maxScore = _loadData[0];
	}
	else
	{
		//if theres no save, maxScore = 0
		maxScore = 0;
	}
}
