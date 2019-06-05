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

	//draw_set_color(c_background)
	//draw_rectangle(x,y,w,h,0)
	//draw_set_alpha(1)
	
	//draw_set_alpha(1)
	//draw_set_color(c_mint)
	//draw_rectangle(x-1,y,w,h,1)
			
	
	
	//gold coins ty
	//draw_set_color(c_empty_slot)
	//draw_rectangle(gold_x, gold_y,gold_x2,gold_y2,0)
	//draw_set_color(c_slot_border)
	//draw_rectangle(gold_x, gold_y,gold_x2,gold_y2,1)
	
	draw_set_color(c_mint)
	draw_set_font(normal)
	var i=0; repeat 3{
		draw_text(gold_x[i],gold_y,gold_count[i])
		draw_sprite_ext(s_gold,i,gold_x2[i],gold_y+13,1/2,1/2,0,-1,1)
		i++
	}
	
}