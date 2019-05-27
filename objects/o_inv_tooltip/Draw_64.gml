/// @description tooltip on hover item here takk

if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	if o_inv.hovered_item!=-1{
		with o_inv.inventory[| o_inv.hovered_item]{
			if item_id!=-1{
				draw_tooltip(x,y,item_id)
				
				// draw compare tooltip here :)
				//break if not equip type
				if o_global.items[# item_id, _TYPE]!=o_global.item_types[0] break
				
				var k=o_global.equipment[? o_global.items[# item_id, _SUBTYPE]]
				//if item of same slot is equipped
				//draw tooltip
				if k!=-1 draw_tooltip(x-205,y,k)
			}
			
		}
	}
}