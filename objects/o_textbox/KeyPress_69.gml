/// @description Insert description here
// You can write your code in this editor
if counter<text_len 
and not is_dialogue{
	// skip text if counter is not done
	counter=text_len
}
else{
	// next line
	var next_index=next_line[index]
	if is_dialogue{
		var t=next_line[index];
		next_index=t[select_index];
	}
	if next_index==0 index++ //next index
	else if next_index>0 index=next_index //specific index
	else {
		instance_destroy(self);
		o_npc.conv_obj=false //destroy
		exit
	}
				
	event_perform(ev_other,ev_user0)
}