/// @description Insert description here
// You can write your code in this editor
//box
draw_set_color(c_background)
draw_rectangle(margin_x1,margin_y1,margin_x2,margin_y2,0)

draw_set_color(c_mint)
draw_rectangle(margin_x1-1,margin_y1,margin_x2,margin_y2,1)
//namebox
draw_set_color(c_background)
draw_rectangle(name_x1,name_y1,name_x2,name_y2,0)
			   
draw_set_color(c_mint)
draw_rectangle(name_x1-1,name_y1,name_x2,name_y2,1)
//conv text
if(is_decision){
	//optionzz <3
	draw_set_font(normal)
	draw_set_color(c_slot_border)
	for(var i=0; i<array_length_1d(text[index]);i++){
		var t=text[index]
		//selected indicator
		draw_text(margin_x1+5,margin_y1+10+i*30,string(i+1)+">")
		if select_index==i{
			//draw_sprite(s_arrow,-1,margin_x1+14,margin_y1+20+(i)*30)
			draw_set_color(c_mint)
		}
		draw_text_ext(margin_x1+30,margin_y1+10+(i)*30,
		t[i],-1,box_w-10)
		draw_set_color(c_slot_border)
	}
}else {
	draw_set_font(normal)
	draw_set_color(c_slot_border)
	var t=string_copy(text[index],0,counter)
	draw_text_ext(margin_x1+5,margin_y1+5,t,-1,box_w-10)
	
	//continue indicator
	if counter==text_len {
		draw_sprite(s_arrow,-1,margin_x2-10,margin_y2-10)
	}
}
//name
//draw_set_valign(fa_middle)
draw_text(name_x1+2,name_y1,speaker[index].name)