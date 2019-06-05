/// @description calc reward thing
draw_set_font(normal)
var l = quest_status_list[quest_info_tab]
var qid=l[|quest_show]
q_active=o_quest_manager.quests[|qid]
var gt="You will receive: "
var rewards=q_active[?"reward_item"]
var r_gold=q_active[?"reward_gold"]
var r_exp=q_active[?"reward_exp"]
var rg_len=string_width(gt+string(r_gold))
var offset_y=str_h
if r_gold {
	reward_gold_text=gt+string(r_gold)
	reward_gold_y=reward_y+offset_y
	reward_gold_spr_x=rh+40+rg_len+12
	reward_gold_spr_y=reward_y+offset_y*3/2
	offset_y*=2
}else reward_gold_text=""
#region item
r_len=ds_list_size(rewards)
reward_items=ds_grid_create(r_len,9) //x,y,w,h,spr,spr_id,sprx,spry,item_id
var i=0; repeat r_len{
	var r=rewards[|i]
	
	var rx=rh+40+(i%4)*(rw+rg)
	var ry=reward_y+offset_y+floor(i/4)*(rw+rg)
	reward_items[#i,0]=rx
	reward_items[#i,1]=ry
	reward_items[#i,2]=rx+rw
	reward_items[#i,3]=ry+rw
	reward_items[#i,4]=o_global.items[#r,_SPRITE]
	reward_items[#i,5]=o_global.items[#r,_SPRITE_ID]
	reward_items[#i,6]=rx+rw/2
	reward_items[#i,7]=ry+rw/2
	reward_items[#i,8]=r
	i++
}
#endregion
#region exp
if r_exp{
	reward_exp_text="Experience: "+string(r_exp)
	reward_exp_y=reward_y+offset_y+ceil(i/4)*(rw+rg)
}else reward_exp_text=""
#endregion
