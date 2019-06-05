/// @description Insert description here
// You can write your code in this editor
if(o_menu.toggled_menu && o_menu.toggled_index=="Equip"){
	//hover
	var changed=false
	with (o_armory_slot){
		
		if(point_in_rectangle(mx,my, x,y,x+size,y+size)){
			other.hovered_item=index
			changed=true
		}
	}
	if !changed hovered_item=-1
	
	//draw_set_color(c_background)
	//draw_rectangle(x,y,w,h,0)
	//draw_set_alpha(1)
	
	//draw_set_alpha(1)
	//draw_set_color(c_mint)
	//draw_rectangle(x-1,y,w,h,1)
	
	
	
	//draw fucking stats kms in middle yeah
	//slot size + 10? idk +y
	draw_set_font(normal)
	
	for(var i=0;i<array_length_1d(o_global.stat_types);i++){
		var a=o_global.armor_stats[? o_global.stat_types[i]]
		var s=o_global.max_stats[? o_global.stat_types[i]]
		//all this to only color (+armor_stat)
		var sgn=a>0?"+":""
		var astr= " ("+sgn+string(a)+")"
		var astrw=string_width(astr)
		var offset=a!=0?astrw:0
		draw_set_color(c_white)
		draw_text(x+slot_size*2, y+i*20, o_global.stat_types[i])
		draw_set_halign(fa_right)
		//green if > base <33
		draw_text(w-o_inv.slot_size*2+5 - offset, y+i*20, s)
		if a!=0 {
			draw_set_color(
			o_global.base_stats[? o_global.stat_types[i]] < 
			o_global.max_stats[? o_global.stat_types[i]] ?
			c_lime : c_red)
			draw_text(w-slot_size*2+5, y+i*20, astr)
		}
		draw_set_halign(fa_left)
	}
}