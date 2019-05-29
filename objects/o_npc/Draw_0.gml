/// @description Insert description here
// You can write your code in this editor
if(collided and not conv_obj){
	draw_sprite_ext(s_talk,-1,bbox_right,
	bbox_top+(1/4-anim_yscale)*16,
	1/4,anim_yscale,0,-1,1)
	anim_yscale=clamp(anim_yscale+1/4/room_speed*5,0,1/4)
}else if anim_yscale!=0 anim_yscale=0