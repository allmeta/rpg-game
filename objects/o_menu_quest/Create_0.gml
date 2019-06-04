/// @description Insert description here
// You can write your code in this editor
w=room_width*.9-40
h=room_height*.9-40
x=room_width-w
y=room_height-h

rh=room_width/2 //room half
rhh=(x+rh)/2
tab_a_x=(x+rhh)/2
tab_b_x=(rhh+rh)/2
desc_x=rh+40

tab_y1=y+10
tab_y2=y+40

title_x=(w+rh)/2
list_y=tab_y2+30

reward_y=h-240
rw=o_inv.slot_size
rg=o_inv.slot_gap

rw_hover=-1
quest_hover=-1

draw_set_font(normal)
str_h=string_height("a")


show_active=1 //which tab, active or complete
quest_show=0 //which quest to show info
quest_info_tab=1 //which list the selected quest is in
//1=active, 0=complete
q_active=0 //selected quest index

aq_len=ds_list_size(o_quest_manager.quests_active)
cq_len=ds_list_size(o_quest_manager.quests_complete)
quest_show_len=[cq_len,aq_len]
event_user(1) //q list
reward_items=noone //to be grid
quest_show_list=[quests_complete,quests_active]
quest_status_list=[o_quest_manager.quests_complete,
				   o_quest_manager.quests_active]
event_user(0) //q reward


current_list=quest_show_list[show_active] //what list to show
