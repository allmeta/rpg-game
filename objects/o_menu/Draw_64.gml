/// @description Insert description here
// You can write your code in this editor
//inventory
if(toggled_menu){
	//BACKGROUND FOR ALL SHIT
	draw_set_color(c_background)
	draw_rectangle(x,y,w,h,0)
	draw_set_alpha(1)
	
	draw_set_alpha(1)
	draw_set_color(c_mint)
	draw_rectangle(x-1,y,w,h,1)
	
	//tab bakground rect
	draw_set_color(c_background)
	draw_rectangle(x,menu_bounds_y,w,h,0)
	draw_set_alpha(1)
	
	draw_set_alpha(1)
	draw_set_color(c_mint)
	draw_rectangle(x-1,menu_bounds_y,w,h,1)
	
	//menu text tabs thing
	//reset hover before draw xds
	draw_set_halign(fa_left)
	hovered_index=-1
	for( var i=0;i<index_len;i++){
		//check hover here :S
		if (point_in_rectangle(
			mx,my, index_coords[# i, 0],
			menu_bounds_y,
			index_coords[# i, 0]+index_coords[# i, 1],h)){
				
			hovered_index=i
		}
		draw_set_color(c_slot_border)
		draw_set_font(big)
		if hovered_index==i{
			draw_set_color(c_mint)
		}
		if toggled_menu_indexes[i]==toggled_index {
			draw_set_color(c_mint)
			draw_set_font(big_bold)
		}
		draw_text(index_coords[# i, 0],
				menu_bounds_y,
				toggled_menu_indexes[i])
	}
	
}else{
	// clickable bag sprite
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
