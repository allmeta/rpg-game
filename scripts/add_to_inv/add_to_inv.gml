 var index=argument0
 //loop through for available spaces, check if max_stacks>1 etc
 var stackable=o_global.items[# index, _MAX_STACKS] > 1
 var empty=-1
 for(var i=0;i<ds_list_size(o_inv.inventory);i++){
	var itemid=o_inv.inventory[| i].item_id
	if(itemid==-1 and empty==-1){
		empty=i	
		if (not stackable) {
			o_inv.inventory[| empty].stacks=1
			o_inv.inventory[| empty].item_id=index
			return 1
		}
	}
	else if (stackable and itemid==index 
	and o_inv.inventory[| i].stacks < o_global.items[# index, _MAX_STACKS]){
		o_inv.inventory[| i].stacks++
		return 1
	}
 }
 //if stackable item, but no stacking slot
if(empty!=-1){ //ready slot
	o_inv.inventory[| empty].stacks=1
	o_inv.inventory[| empty].item_id=index
	return 1
} 
return -1 //-1 for full inventory. catch!
