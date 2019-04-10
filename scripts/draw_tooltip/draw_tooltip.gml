var xx=argument0
var yy=argument1
var item_id=argument2

var w=200
var h=100
var ehx= xx-w <0 //clamp xx too
var ehy=yy-h <0
var slotgap=o_inv.slot_gap
var x_offset=xx+ehx*(w+size + slotgap*2) - slotgap
var y_offset=yy + ehy*(h+size + slotgap*2) - slotgap       //check for roof, moving tooltip down if over screen
var offset=10
var current_height=0
		
draw_set_color(c_background)
draw_rectangle(x_offset-w,y_offset-h,x_offset,y_offset,0)
				
draw_set_color(c_slot_border)
draw_rectangle(x_offset-w,y_offset-h,x_offset,y_offset,1)
//info here
draw_set_font(normal)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(x_offset-w/2,y_offset-h+5,o_global.items[# item_id, _NAME])
current_height+=25 //add on height
//xdddd nice
draw_line(x_offset-w+offset,y_offset-h+current_height,x_offset-offset,y_offset-h+current_height)
current_height+=5 //add
//draw it wow style tihi
draw_set_halign(fa_right)
// INLINE
draw_text(x_offset-offset,y_offset-h+current_height,o_global.items[# item_id, _TYPE])
draw_text(x_offset-offset,y_offset-h+current_height+20,o_global.items[# item_id, _SUBTYPE])
draw_set_halign(fa_left)
//current_height+=20
//loop through stats and draw them with keys mm
//show_debug_message(o_global.items[# item_id,_TYPE])
var type=o_global.items[# item_id,_TYPE]

switch(type){
	case "equip":

		var s=o_global.items[# item_id, _STATS]
		draw_set_halign(fa_left)
		for(var i=0;i<array_length_1d(o_global.stat_types);i++){
			var a=s[| i]
			if a==0 continue//skip if item doesn't have shit k
			var sgn=a>0?"+":""
			if sign(a)>0 draw_set_color(c_lime) else draw_set_color(c_red)
			draw_text(x_offset-w+offset, y_offset-h+current_height, sgn+string(a)+" "+o_global.stat_types[i])	
			//draw_text(x_offset-w/2-offset, y_offset-h+current_height, "+"+string(a))
			current_height+=20
		}
		break
	case "potion":
	
		var s=o_global.items[# item_id, _EFFECT] //_STATS og _EFFECT er egt samme ting /shrug
		draw_set_halign(fa_left)
		draw_set_color(c_lime)
		draw_text(x_offset-w+offset, y_offset-h+current_height, 
		"On use: \nheals "+string(s)+" "+o_global.items[# item_id, _SUBTYPE])
		break
}
draw_set_color(c_white)