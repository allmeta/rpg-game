/// @description Insert description here
// You can write your code in this editor
quests=noone
quest_len=0
process_quests(open_json("quests.json"))

quests_active=ds_list_create() //just list active quest ids I guess? :o
quests_complete=ds_list_create() //same here


