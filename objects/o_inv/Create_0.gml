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
	var k=instance_create_layer(20+x+(i%5)*(slot_size+slot_gap),
								40+y+floor(i/5)*(slot_gap+slot_size),
								"Instances",o_inv_slot)
	k.index=i
	inventory[| i]=k
}

gold_count=01234567
gold_x=x+20
gold_y=40+y+floor(i/5)*(slot_gap+slot_size)
draw_set_font(normal)
gold_x2=gold_x+string_width(string(gold_count))+12
held_item=-1
hovered_item=-1