/// @description Insert description here
// You can write your code in this editor
depth=-5
x=room_width/2
y=room_height*.1+40
w=room_width*.9-40
h=room_height*.8

inventory=ds_list_create()
slot_size=60
slot_gap=5
slots=20
for(var i =0; i < slots; i++){
	var k=instance_create_layer(20+x+(i%5)*slot_size+floor((i)%5)*slot_gap,
								40+y+slot_size*floor(i/5)+floor((i)/5)*slot_gap,
								"Instances",o_inv_slot)
	k.index=i
	inventory[| i]=k
}

gold_count=01234567
gold_x=x+40
gold_y=h-60*3
gold_x2=x+(slot_gap+slot_size)*5+20
gold_y2=gold_y+20
held_item=-1
hovered_item=-1