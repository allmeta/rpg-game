var inv_index=argument0
var slot= o_inv.inventory[| inv_index]
var item=slot.item_id
switch (o_global.items[# item, _TYPE]){
	case "equip":
		var k=o_global.equipment[? o_global.items[# item, _SUBTYPE]]
		//if item is equipped already
		//add to inv
		if k!=-1 add_to_inv(k)
		o_global.equipment[? o_global.items[# item, _SUBTYPE]]=item
		//update stats with armor thing
		stats_update()
		//if slot empty, then fuck item ty
		slot.stacks--
		if slot.stacks==0 slot.item_id=-1
		break
	case "potion":
		//consume
		//add on subtype for now
		
		affect_stat( o_global.sub_to_stat[? o_global.items[# item, _SUBTYPE]],
									o_global.items[# item, _EFFECT])
		//remove item from inv
		slot.stacks--
		if slot.stacks==0 slot.item_id=-1
		break
}