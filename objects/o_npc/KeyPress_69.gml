/// @description Insert description here
// You can write your code in this editor
if(collided and not conv_obj){
	conv_obj=instance_create_layer(x,y,"Conversation",o_textbox)
	with conv_obj{
		text=other.conv_text
		speaker=other.conv_speaker
		next_line=other.conv_next_line
		event_perform(ev_other,ev_user0)
	}
}