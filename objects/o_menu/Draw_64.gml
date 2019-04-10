/// @description Insert description here
// You can write your code in this editor
//inventory
if(toggled_menu){
	//menu text tabs thing
	//reset hover before draw xds
	hovered_index=-1
	for( var i=0;i<index_len;i++){
		//check hover here :S
		//TODO
		if (point_in_rectangle(
				mx,my, index_coords[# i, 0]-5,
				menu_bounds_y-5,
				index_coords[# i, 0]+index_coords[# i, 1]+5,
				menu_bounds_y+30)){
			hovered_index=i
		}
		draw_set_font(big)
		draw_set_color(c_white)
		if hovered_index==i or toggled_menu_indexes[i]==toggled_index draw_set_color(c_mint)
		draw_text(index_coords[# i, 0],
								menu_bounds_y,
								toggled_menu_indexes[i])
	}
	
}
