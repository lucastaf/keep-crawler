// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save(){
	
	var data = {
			achievements : global.achievements,
			initialStatus :	global.initialStatus
	}
	//checa se ja existe um arquivo
	if file_exists("save.sav"){
		file_delete("save.sav")
	}

	//salva o conteudo
	var _string = json_stringify(data)
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1)
	buffer_write (_buffer, buffer_string, _string)
	buffer_save (_buffer, "save.sav")
	buffer_delete (_buffer)
}

function Load(){
	
	if !file_exists("save.sav"){
		return false
	}
	var _string = buffer_read(buffer_load("save.sav"),buffer_string)
	buffer_delete (buffer_load("save.sav"))
	var _loaddata = json_parse(_string)	
	return _loaddata
}