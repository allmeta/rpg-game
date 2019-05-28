/// @description Insert description here
// You can write your code in this editor
if(collided){
	if(conv_obj){
		if conv_obj.counter<conv_obj.text_len 
		and !is_array(conv_obj.text[conv_obj.index]){
			// skip text if counter is not done
			conv_obj.counter=conv_obj.text_len
		}
		else{
			// next line
			with conv_obj{
				
				var next_index=next_line[index]
				if is_array(text[index]){
					var t=next_line[index];
					next_index=t[select_index];
				}
				show_debug_message(next_index)
				if next_index==0 index++ //next index
				else if next_index>0 index=next_index //specific index
				else {
					instance_destroy(self);
					other.conv_obj=false //destroy
					exit
				}
				
				event_perform(ev_other,ev_user0)
			}
		}
		
	}else{
		conv_obj=instance_create_layer(x,y,"Conversation",o_textbox)
		with conv_obj{
			text=other.conv_text
			speaker=other.conv_speaker
			next_line=other.conv_next_line
			event_perform(ev_other,ev_user0)
		}
	}
}