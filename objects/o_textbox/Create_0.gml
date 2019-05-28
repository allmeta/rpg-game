/// @description Insert description here
// You can write your code in this editor
index=0
text=-1 //array
speaker=-1 //array
text_len=0
counter=0 //for not displaying text instantly
next_line=-1 //array 

is_dialogue=false //yup

select_index=0 //for choice dialogue
select_max=0

//gui precalc
box_w=room_width*.4
box_h=100
margin_x1=(room_width-box_w)/2
margin_x2=margin_x1+box_w
margin_y2=room_height-40
margin_y1=margin_y2-box_h

name_x1=margin_x1
name_w=40 //endres i npc 
name_x2=name_x1+name_w
name_y2=margin_y1-5
name_y1=name_y2-20

image_speed=1/20
