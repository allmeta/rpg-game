/// @description Insert description here
// You can write your code in this editor
with o_player {
	var i=instance_place(x,y,o_item)
}
if i!=noone{
	i.collided=true
	if instance==noone or instance!=i{
		instance=i
		name=o_global.items[# i.item_id,_NAME]
		with other event_user(0)
	}
}else if instance!=noone{
	with instance collided=false
	instance=noone
}