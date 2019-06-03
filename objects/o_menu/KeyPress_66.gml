/// @description Insert description here
// You can write your code in this editor
if o_player.in_conversation exit //exit if in conv
if(not toggled_menu){
	toggled_menu=true
}else if toggled_index==toggled_menu_indexes[0] {
	toggled_menu=false
}
toggled_index=toggled_menu_indexes[0]