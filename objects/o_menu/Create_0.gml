/// @description Insert description here
// You can write your code in this editor


menu_bounds_x=room_width*.8
menu_bounds_y=room_height*.8

toggled_menu=false
toggled_menu_indexes=["Equip","Skills","Map","Quest","System"]



var a = room_width/2
index_len=array_length_1d(toggled_menu_indexes)
index_coords=ds_grid_create(index_len,2)
hovered_index=-1

menu_length=0
draw_set_font(big)
var i=0; repeat(index_len){
	menu_length+=string_width(toggled_menu_indexes[i])
	i++
}
var gap=50
menu_length+=(index_len-1)*gap

var cur_len=0
for( var i=0;i<index_len;i++){
		var l = string_width(toggled_menu_indexes[i])
		//var xx = a + a * (i - index_len/2+1/2)/ menu_length
		var xx = a - menu_length/2 + cur_len
		cur_len+=l+gap
		index_coords[# i, 0] = xx
		index_coords[# i, 1] = l
}
toggled_index="Equip"
//layer=layer_create(-1000)