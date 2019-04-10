/// @description Insert description here
// You can write your code in this editor
if (o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	var held=o_inv.held_item==index
	if (o_inv.hovered_item==index) {
		draw_set_color(c_empty_slot_hover)
	}
	else{
		draw_set_color(c_empty_slot)
	}
	draw_set_alpha(1)
	draw_rectangle(x,y,x+size,y+size,0)
	if (stacks>0 and not held) {
		draw_set_color(c_slot_border)
	}
	else {
		draw_set_color(c_slot_border_empty)
	}
	draw_rectangle(x,y,x+size,y+size,1)
	if item_id!=-1{
		draw_sprite_ext(
										o_global.items[# item_id,_SPRITE],
										o_global.items[# item_id,_SPRITE_ID],
										x+(size)/2,y+(size)/2,1,1,0,held? c_empty_slot : -1,1)
		
	}
	draw_set_font(stack)
	if stacks>1 draw_text(x+o_inv.slot_size-12,y,stacks)
}