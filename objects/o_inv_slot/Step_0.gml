/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
//
var hover=o_inv.hovered_item==index
//
if (item_id!=-1 && hover && mouse_check_button_pressed(mb_left)){
	o_inv.held_item=index
}
if(item_id!=-1 and hover and  mouse_check_button_pressed(mb_right)){
	//transfer to  armory slot hmm
	use_item(index)
}
//
var held=o_inv.held_item==index
//
if(mouse_check_button_released(mb_left)){
	if(hover){
		if(held){
			//released and this item was held and hovered
			o_inv.held_item=-1
		}else if o_inv.held_item!=-1 && o_inv.held_item!=index{
			//if released and other item was held: swap items
			var temp=[item_id,stacks]
			var i=o_inv.inventory[| o_inv.held_item]
			item_id=i.item_id
			stacks=i.stacks
			i.item_id=temp[0]
			i.stacks=temp[1]
		
			o_inv.held_item=-1
		}
	}else if (held && o_inv.hovered_item==-1){
		//if this was held, but didnt hover any other item
		o_inv.held_item=-1
		//drop item on ground
		drop_item(index)
	}
}
}