///@arg quest_id
ds_list_add(o_quest_manager.quests_active,argument0)
//update lists
with o_menu_quest{
	event_user(1)
	event_user(0)
}