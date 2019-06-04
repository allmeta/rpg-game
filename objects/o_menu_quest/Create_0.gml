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

tab_y1=y+10
tab_y2=y+40

title_x=(w+rh)/2
list_y=tab_y2+30

reward_y=h-240
reward_offset_x=(title_x-rh)
reward_x1=(title_x+rh)/2


show_active=true
quest_show=0 //index in array

q_len=ds_list_size(o_quest_manager.quests)
quests=o_quest_manager.quests

