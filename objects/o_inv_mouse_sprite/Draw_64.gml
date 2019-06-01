/// @description Insert description here
// You can write your code in this editor
with o_inv{
	if(held_item!=-1){
		window_set_cursor(cr_none)
		var i=inventory[| held_item];
		draw_sprite_ext(o_global.items[# i.item_id,_SPRITE],
										o_global.items[# i.item_id,_SPRITE_ID],
										mx,my, 1,1,0,-1,1)
	}else window_set_cursor(cr_default)
}