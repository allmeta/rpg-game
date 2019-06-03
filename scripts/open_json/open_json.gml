///@arg file
var jsonfile=file_text_open_read(argument0)
var data_fk_gms=""
while (!file_text_eof(jsonfile)){
	data_fk_gms+=file_text_read_string(jsonfile)
	file_text_readln(jsonfile)
}
file_text_close(jsonfile)
var encodedjson=json_decode(data_fk_gms)
return encodedjson[? "default"]