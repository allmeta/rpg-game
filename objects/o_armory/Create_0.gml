/// @description Insert description here
// You can write your code in this editor
w=room_width/2
y=room_height*.1+40
x=room_width*.1+40
h=room_height*.9-40
slot_size=o_inv.slot_size

hovered_item=-1
indexes=ds_list_create()

//big stuff here riiip
for ( var i=0;i<8;i++){
	var a=i<4 ? 0 : 1
	var k=instance_create_layer(
					x+40+a*(w-x-40*2-o_inv.slot_size),
					y+40+i*(o_inv.slot_gap+o_inv.slot_size)-a*4*(o_inv.slot_gap+o_inv.slot_size),
					"Instances", o_armory_slot)
	k.size=o_inv.slot_size
	k.index=i
	k.slot=o_global.equip_types[i]
	indexes[| i]=k
}