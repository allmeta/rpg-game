var jsonfile=file_text_open_read("items.json")
var data_fk_gms=""
while (!file_text_eof(jsonfile)){
	data_fk_gms+=file_text_read_string(jsonfile)
	file_text_readln(jsonfile)
}
file_text_close(jsonfile)
var encodedjson=json_decode(data_fk_gms)
var m=ds_map_find_value(encodedjson, "default") 
totalItems=ds_list_size(m)
items=ds_grid_create(totalItems,15)
var type_to_effect=ds_map_create()
type_to_effect[? "potion"]="effect"
type_to_effect[? "equip"]="stats"

var eff_to_str=ds_map_create()
for(var i=0;i<totalItems;i++){
	var entry=m[| i]
	
	items[# i, _ID]=entry[? "id"]
	items[# i, _NAME]=entry[? "name"]
	items[# i, _TYPE]=entry[? "type"]
	items[# i, _SUBTYPE]=entry[? "sub_type"]
	items[# i, _MAX_STACKS]=entry[? "max_stacks"]
	items[# i, _SPRITE_ID]=entry[? "sprite_id"]
	var eee=type_to_sub[? entry[? "type"]]
	items[# i,_SPRITE]=eee[?  entry[? "sub_type"]] // <33
	items[# i,_EFFECT]=entry[? type_to_effect[? entry[? "type"]]] //effect and stats are the same number
	//items[# i,_STATS]=entry[? type_to_effect[? entry[? "type"]]] //effect and stats are the same number
}