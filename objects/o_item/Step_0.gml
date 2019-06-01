/// @description Insert description here
// You can write your code in this editor
//check for player close lol
//then prompt stuff on draw ty
/*
if(distance_to_object(o_player)<16){
	if not collided {
		collided=true
		//draw info box
		with instance_create_layer(x,y,"Conversation",o_infobox){
			name=o_global.items[# other.item_id,_NAME]
		}
	}
}else if collided{
	collided=false
}
