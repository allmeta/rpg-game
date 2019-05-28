/// @description set name width
// You can write your code in this editor
draw_set_font(normal)
name_w=string_width(speaker[index].name)
name_x2=name_x1+name_w+2

if(is_string(text[index])){
	text_len=string_length(text[index])
}

counter=0