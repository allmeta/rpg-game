/// @description Insert description here
// You can write your code in this editor
if instance!=noone and not o_npc.conv_obj{
	draw_set_color(c_background)
	draw_rectangle(margin_x1,margin_y1,margin_x2,margin_y2,0)

	draw_set_color(c_mint)
	draw_rectangle(margin_x1-1,margin_y1,margin_x2,margin_y2,1)
	
	draw_set_font(normal)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(name_x,name_y,name)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
}