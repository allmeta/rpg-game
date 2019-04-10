/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
//
var hover=o_armory.hovered_item==index
//fucking unequip item
// can be put in event
if (hover){
	if mouse_check_button_pressed(mb_right){
		var k=o_global.equipment[? slot]
		if add_to_inv(k) {
			o_global.equipment[? slot]=-1
			stats_update()
		}
		
	}
}
}