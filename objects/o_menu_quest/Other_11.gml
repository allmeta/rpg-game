/// @description q list
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