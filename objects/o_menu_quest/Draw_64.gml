/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Quest"){
#region main
draw_set_color(c_background)
draw_rectangle(x,y,w,h,0)
draw_set_alpha(1)
	
draw_set_alpha(1)
draw_set_color(c_mint)
draw_rectangle(x-1,y,w,h,1)
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
if show_active{
	var i=0; repeat q_len{
		var q=quests[|i]
		
		if quest_show==i{
			draw_set_font(normal_bold)
			draw_set_color(c_mint)
		}else{
			draw_set_font(normal)
			draw_set_color(c_slot_border)
		}
		var offset=list_y+40*i
		draw_text(x+40,offset,q[?"name"])
		draw_line(x+40,offset+30,rh-40,offset+30)
		i++
	}
}
#endregion
#region desc
var q=quests[|quest_show]
//sep line
draw_set_color(c_slot_border)
draw_line(rh,y,rh,h)
//title
draw_set_font(normal_bold)
draw_set_color(c_mint)
draw_set_halign(fa_center)

draw_text(title_x,tab_y1,q[?"name"])
draw_line(rh+40,tab_y2,w-40,tab_y2)

//desc
draw_set_font(normal)
draw_set_color(c_slot_border)
draw_set_halign(fa_left)
var dh=string_height("a")
draw_text_ext(rh+40,list_y,q[?"desc"],dh,w-rh-80)

//reward
draw_text(rh+40,reward_y,"Reward")
draw_set_halign(fa_center)
var rewards=q[?"reward"]
var r_len=ds_list_size(rewards)
var i=0; repeat r_len{
	var r=rewards[|i]
	var r_type=r[?"type"]
	if r_type=="gold"{
		draw_text(reward_x1+(i%2)*reward_offset_x,
			      reward_y+floor(i/2)*40+40,
				  r[?"amount"])
	}else if r_type=="item"{
		
		draw_text(reward_x1+(i%2)*reward_offset_x,
			      reward_y+floor(i/2)*20+40,
				  o_global.items[#r[?"id"],_NAME])
	}
	i++
	
}

#endregion








}