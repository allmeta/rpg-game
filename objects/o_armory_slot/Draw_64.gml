/// @description Insert description here
// You can write your code in this editor
if (o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	//var held=o_armory.held_item==index
	var item_id=o_global.equipment[? slot]
	if (o_armory.hovered_item==index) {
		draw_set_color(c_empty_slot_hover)
	}
	else{
		draw_set_color(c_empty_slot)
	}
	draw_set_alpha(1)
	draw_rectangle(x,y,x+size,y+size,0)
	if (item_id!=-1) {
		draw_set_color(c_slot_border)
	}
	else {
		draw_set_color(c_slot_border_empty)
	}
	draw_rectangle(x,y,x+size,y+size,1)
	if item_id!=-1{
	//	draw_sprite_ext(s_item, o_global.items[# item_id,ID],x+(size)/2,y+(size)/2,1,1,0,c_white,1)
		draw_sprite_ext(o_global.items[# item_id,_SPRITE],
										o_global.items[# item_id,_SPRITE_ID],
										x+size/2,y+size/2, 1,1,0,-1,1)
	}else{
		draw_sprite_ext(//s_item, index+1,
											o_global.slot_to_sprite[?slot],
											//o_global.items[# item_id,_SPRITE],
											1, //1 for første spriten, gjør til placeholder
											x+(size)/2,y+(size)/2,1,1,0,c_black,1)
	}
}