/// @description Insert description here
// You can write your code in this editor
if(collided and not conv_obj
	and not o_menu.toggled_menu){
	conv_obj=instance_create_layer(x,y,"Conversation",o_textbox)
	with conv_obj{
		text=other.conv_text
		speaker=other.conv_speaker
		next_line=other.conv_next_line
		scripts=other.conv_scripts
		event_perform(ev_other,ev_user0)
	}
}