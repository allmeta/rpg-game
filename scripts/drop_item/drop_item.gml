var inv_index=argument0
var slot= o_inv.inventory[| inv_index]
while slot.stacks!=0{
	with instance_create_layer(o_player.x,o_player.y,"Instances",o_item){
		item_id=slot.item_id
		slot.stacks--
	}
}
slot.item_id=-1