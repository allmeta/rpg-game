/// @description set name width etc
draw_set_font(normal_bold)
name_w=string_width(speaker[index].name)
name_x2=name_x1+name_w+2

if(is_string(text[index])){
	text_len=string_length(text[index])
}else{
	//array I guess for now
	select_max=array_length_1d(text[index])-1
}
is_decision=is_array(text[index])

counter=0