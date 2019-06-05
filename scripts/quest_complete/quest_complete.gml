///@arg quest_id
var l=o_quest_manager.quests_active
var len=ds_list_size(l)

var i=len-1; repeat len{
	if argument0==l[|i]{
		ds_list_delete(l,i)
		break
	}
	
	i--
}
ds_list_add(o_quest_manager.quests_complete,argument0)

//update lists
with o_menu_quest{
	event_user(1)
	event_user(0)
}