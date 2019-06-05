/// @description Insert description here
// You can write your code in this editor
//q list hover
var check=false
var i=0; repeat quest_show_len[show_active]{
	if point_in_rectangle(mx,my,
				current_list[#i,0],
				current_list[#i,1],
				current_list[#i,3],
				current_list[#i,4]){
		check=true
		quest_hover=i
		break
	}
	i++
}
if not check quest_hover=-1
//hover rewards
check=false
var i=0; repeat r_len{
	
	if point_in_rectangle(mx,my,
				reward_items[#i,0],	
				reward_items[#i,1],
				reward_items[#i,2],
				reward_items[#i,3])
	{
		rw_hover=i
		check=true
		break
	}
	i++
}
if not check rw_hover=-1
//klikk stuff
if mouse_check_button_pressed(mb_left){
	if point_in_rectangle(mx,my,x,y,rhh,tab_y2){
		show_active=1
		current_list=quest_show_list[show_active] //what list to show
	}
	else if point_in_rectangle(mx,my,rhh,y,rh,tab_y2){
		show_active=0
		current_list=quest_show_list[show_active] //what list to show
	}else if quest_hover!=-1{
		quest_show=quest_hover
		quest_info_tab=show_active
		//event_user(1)
		event_user(0)
		
	}
}