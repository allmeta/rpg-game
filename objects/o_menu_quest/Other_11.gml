/// @description q list
aq_len=ds_list_size(o_quest_manager.quests_active)
cq_len=ds_list_size(o_quest_manager.quests_complete)
quest_show_len=[cq_len,aq_len]

//switch to c if no q on a
if not aq_len and cq_len{
	quest_info_tab=0
	show_active=0
}
quests_active=ds_grid_create(aq_len,5) //x,y,text,x2,y2
var i=0; repeat aq_len{
	var aq=o_quest_manager.quests_active[|i]
	var q=o_quest_manager.quests[|aq]
	var offset=list_y+str_h*i
	quests_active[#i,0]=x
	quests_active[#i,1]=offset
	quests_active[#i,2]=q[?"name"]
	quests_active[#i,3]=rh
	quests_active[#i,4]=offset+str_h
	i++
}
quests_complete=ds_grid_create(cq_len,5)
var i=0; repeat cq_len{
	var cq=o_quest_manager.quests_complete[|i]
	var q=o_quest_manager.quests[|cq]
	var offset=list_y+str_h*i
	quests_complete[#i,0]=x
	quests_complete[#i,1]=offset
	quests_complete[#i,2]=q[?"name"]
	quests_complete[#i,3]=rh
	quests_complete[#i,4]=offset+str_h
	i++
}
//update lists
quest_show_list=[quests_complete,quests_active]
quest_status_list=[o_quest_manager.quests_complete,
				   o_quest_manager.quests_active]
current_list=quest_show_list[show_active] //what list to show