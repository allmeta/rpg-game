///@arg item_list
var m=argument0
totalItems=ds_list_size(m)
items=ds_grid_create(totalItems,15)
var type_to_effect=ds_map_create()
type_to_effect[? "potion"]="effect"
type_to_effect[? "equip"]="stats"

for(var i=0;i<totalItems;i++){
	var entry=m[| i]
	var e_id=entry[? "id"]
	items[# e_id, _ID]=e_id
	items[# e_id, _NAME]=entry[? "name"]
	items[# e_id, _TYPE]=entry[? "type"]
	items[# e_id, _SUBTYPE]=entry[? "sub_type"]
	items[# e_id, _MAX_STACKS]=entry[? "max_stacks"]
	items[# e_id, _SPRITE_ID]=entry[? "sprite_id"]
	var eee=type_to_sub[? entry[? "type"]]
	items[# e_id,_SPRITE]=eee[? entry[? "sub_type"]] // <33
	items[# e_id,_EFFECT]=entry[? type_to_effect[? entry[? "type"]]] //effect and stats are the same number
	//items[# i,_STATS]=entry[? type_to_effect[? entry[? "type"]]] //effect and stats are the same number
}