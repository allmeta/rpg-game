/// @description Insert description here
// You can write your code in this editor
//inventory
if(toggled_menu){
	//menu text tabs thing
	//reset hover before draw xds
	hovered_index=-1
	draw_set_font(big)
	for( var i=0;i<index_len;i++){
		//check hover here :S
		if (point_in_rectangle(
				mx,my, index_coords[# i, 0],
				menu_bounds_y,
				index_coords[# i, 0]+index_coords[# i, 1],
				menu_bounds_y+string_height("e"))){
			hovered_index=i
		}
		//draw_set_font(big)
		draw_set_color(c_slot_border)
		if hovered_index==i or toggled_menu_indexes[i]==toggled_index draw_set_color(c_mint)
		//draw_set_halign(fa_center)
		draw_text(index_coords[# i, 0],
								menu_bounds_y,
								toggled_menu_indexes[i])
	}
	
}else{
	// bag, inventory open
	var hovered_bag=false
	if(point_in_circle(mx,my,room_width-50,50,24)){
		hovered_bag=true
	}
	draw_sprite_ext(s_bag,0,room_width-50,50,
					1,1,0,hovered_bag?c_gray:-1,1)
	if(mouse_check_button_pressed(mb_left) && hovered_bag){
		hovered_bag=false
		toggled_index=toggled_menu_indexes[0]
		toggled_menu=true
	}
}
