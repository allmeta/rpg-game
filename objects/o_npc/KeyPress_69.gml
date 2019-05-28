/// @description Insert description here
// You can write your code in this editor
if(collided){
	if(conv_obj){
		if conv_obj.counter<conv_obj.text_len and !is_array(conv_obj.text[conv_obj.index]){
			conv_obj.counter=conv_obj.text_len
		}
		else if conv_obj.index<array_length_1d(conv_text)-1{
			with conv_obj{				
				index++
				event_perform(ev_other,ev_user0)
			}
		}else{
			instance_destroy(conv_obj)
			conv_obj=noone
		}
		
	}else{
		conv_obj=instance_create_layer(x,y,"Conversation",o_textbox)
		with conv_obj{
			text=other.conv_text
			speaker=other.conv_speaker
			event_perform(ev_other,ev_user0)
		}
	}
}