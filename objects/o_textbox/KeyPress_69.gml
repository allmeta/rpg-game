/// @description Insert description here
// You can write your code in this editor
if counter<text_len 
and not is_decision{
	// skip text if counter is not done
	counter=text_len
}
else{
	//execute script if any
	var scr=scripts[index]
	if is_decision {
		scr=scr[select_index]
	}
	if is_array(scr){
		var scr_args=[]
		array_copy(scr_args,0,scr,1,array_length_1d(scr)-1)
		script_execute_alt(scr[0],scr_args)
		
	}else if scr!=-1 {
		script_execute(scr)
	}//nothing happens otherwise
	
	// next line
	var next_index=next_line[index]
	if is_decision{
		var t=next_line[index];
		next_index=t[select_index];
	}
	if next_index==0 index++ //next index
	else if next_index>0 index=next_index //specific index
	else {
		instance_destroy(self);
		o_npc.conv_obj=false //destroy
		o_player.in_conversation=false
		exit
	}
				
	event_perform(ev_other,ev_user0)
}