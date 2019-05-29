/// @description Insert description here
// You can write your code in this editor
if(collided and not conv_obj){
	draw_sprite_ext(s_talk,2,bbox_right,bbox_top,1/4,anim_yscale,0,-1,1)
	anim_yscale=clamp(anim_yscale+1/4/room_speed*3,0,1/4)
}else if anim_yscale!=0 anim_yscale=0