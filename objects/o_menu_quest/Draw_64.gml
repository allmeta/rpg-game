/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Quest"){
#region main
//draw_set_color(c_background)
//draw_rectangle(x,y,w,h,0)
//draw_set_alpha(1)
	
//draw_set_alpha(1)
//draw_set_color(c_mint)
//draw_rectangle(x-1,y,w,h,1)
#endregion
#region tabs

//active BAD SOLUTION FUCK MEG SEINT LOL
draw_set_halign(fa_center)
if show_active{
	draw_set_font(normal_bold)
	draw_set_color(c_mint)
	
}else{
	draw_set_font(normal)
	draw_set_color(c_slot_border)
	draw_rectangle(x,y,rhh,tab_y2,1)
}
draw_text(tab_a_x,tab_y1,"Active")
//completed
if not show_active{
	draw_set_font(normal_bold)
	draw_set_color(c_mint)
	
}else{
	draw_set_font(normal)
	draw_set_color(c_slot_border)
	draw_rectangle(rhh,y,rh,tab_y2,1)
}
draw_text(tab_b_x,tab_y1,"Completed")	
draw_set_halign(fa_left)
#endregion
#region list
var i=0; repeat quest_show_len[show_active]{
	if quest_show==i and quest_info_tab==show_active{
		draw_set_font(normal_bold)
		draw_set_color(c_empty_slot)
		draw_rectangle(	current_list[#i,0],
						current_list[#i,1],
						current_list[#i,3],
						current_list[#i,4],0)
		draw_set_color(c_mint)
	}else if quest_hover==i{
		draw_set_font(normal)
		draw_set_color(c_empty_slot_hover)
		draw_rectangle(	current_list[#i,0],
						current_list[#i,1],
						current_list[#i,3],
						current_list[#i,4],0)
		draw_set_color(c_mint)
	}else{
		draw_set_font(normal)
		draw_set_color(c_slot_border)
	}
	draw_text(current_list[#i,0]+40,
			current_list[#i,1],
			current_list[#i,2])
	i++
}
#endregion
#region desc
//sep line
draw_set_color(c_slot_border)
draw_line(rh,y,rh,h)
if q_active!=-1{
	//title
	draw_set_font(big)
	draw_set_color(c_mint)
	draw_set_halign(fa_center)

	draw_text(title_x,tab_y1,q_active[?"name"])
	draw_line(desc_x,tab_y2,w-40,tab_y2)

	//desc
	draw_set_font(normal)
	draw_set_color(c_slot_border)
	draw_set_halign(fa_left)
	draw_text_ext(desc_x,list_y,q_active[?"desc"],-1,w-rh-80)
}else{
	
	//no quest at all shit
	draw_set_color(c_slot_border)
	draw_set_halign(fa_center)
	draw_set_font(normal)
	draw_text((rh+w)/2,(y+h)/2,"No selected quest.")
	draw_set_halign(fa_left)
	exit //no reward
}
#endregion
#region reward
draw_set_color(c_mint)
draw_set_font(big)
draw_text(desc_x,reward_y,"Reward")
draw_set_color(c_slot_border)
draw_set_font(normal)
if (reward_gold_text)!="" {
	draw_text(desc_x,reward_gold_y,reward_gold_text)
	draw_sprite_ext(s_gold,1,reward_gold_spr_x,
	reward_gold_spr_y,1/2,1/2,0,-1,1)
}
if reward_exp_text!=""{
	draw_text(desc_x,reward_exp_y,reward_exp_text)
}
var i=0; repeat r_len{
	draw_set_color(c_empty_slot)
	draw_rectangle(reward_items[#i,0],reward_items[#i,1],
				   reward_items[#i,2],reward_items[#i,3],0)
	draw_set_color(c_slot_border)
	draw_rectangle(reward_items[#i,0],reward_items[#i,1],
				   reward_items[#i,2],reward_items[#i,3],1)
	draw_sprite(reward_items[#i,4],
				reward_items[#i,5],
				reward_items[#i,6],
				reward_items[#i,7])
	i++
	
	
}
//hover tooltip
if rw_hover!=-1{
	draw_tooltip(reward_items[# rw_hover,0],
				reward_items[# rw_hover,1],
				reward_items[# rw_hover,8])
}

#endregion
}