/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//tooltip on hover item here takk
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	if o_armory.hovered_item!=-1{
		with o_armory.indexes[| o_armory.hovered_item]{
			var item_id=o_global.equipment[? slot]
			if item_id!=-1{
				draw_tooltip(x,y,item_id)
			}		
		}
	}
}