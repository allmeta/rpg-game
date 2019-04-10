/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	//gui hover
	var changed=false
	with (o_inv_slot){
		
		if(point_in_rectangle(mx,my, x,y,x+size,y+size)){
			other.hovered_item=index
			changed=true
			break
		}
	}
	if !changed hovered_item=-1

	draw_set_color(c_background)
	draw_rectangle(x,y,w,h,0)
	draw_set_alpha(1)
	
	draw_set_alpha(1)
	draw_set_color(c_mint)
	draw_rectangle(x-1,y,w,h,1)
			
	
	
	//gold coins ty
	draw_set_color(c_empty_slot)
	draw_rectangle(x+25, h-60*3,x+slot_gap*5+slot_size*5+20,h-60*3+20,1)
	draw_rectangle(x+25, h-60*3,x+slot_gap*5+slot_size*5+20,h-60*3+20,0)
	
	draw_sprite_ext(s_gold,0,x+25,h-60*3,1/2,1/2,0,-1,1)
	
	draw_set_color(c_mint)
	draw_set_font(normal)
	draw_text(x+50,h-60*3+3,gold_count)
}