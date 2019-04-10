/// @description Insert description here
// You can write your code in this editor
//tooltip on hover item here takk
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	if o_inv.hovered_item!=-1{
		with o_inv.inventory[| o_inv.hovered_item]{
			if item_id!=-1{
				draw_tooltip(x,y,item_id)
			}
		}
	}
}