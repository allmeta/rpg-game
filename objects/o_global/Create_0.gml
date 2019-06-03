/// @description Insert description here
// You can write your code in this editor
randomize()
#region Items
globalvar _ID, _NAME, _TYPE, _SUBTYPE, _MAX_STACKS,_SPRITE_ID,_STATS,_SPRITE,_EFFECT;
_ID=0
_NAME=1
_TYPE=2
_SUBTYPE=3
_MAX_STACKS=4
_SPRITE_ID=5
_SPRITE=6
_STATS=7
_EFFECT=7

//declare item types
equip_types=["head","neck","chest","main-hand","hand","ring","feet","off-hand"]
pot_types=["hp","mp"]
quest_types=["misc"]
item_types=["equip","potion","quest"]

// make item to sprite maps
var eq_sprites=[s_heads,s_necks,s_chests,s_weps,s_hands,s_rings,s_feet,s_offs]
slot_to_sprite=ds_map_create()
for(var i=0;i<array_length_1d(equip_types);i++){
	slot_to_sprite[? equip_types[i]]=eq_sprites[i]
}
pot_to_sprite=ds_map_create()
var pot_sprites=[s_hp,s_mp]
for(var i=0;i<array_length_1d(pot_types);i++){
	pot_to_sprite[? pot_types[i]]=pot_sprites[i]
}
quest_to_sprite=ds_map_create()
var quest_sprites=[s_misc]
for(var i=0;i<array_length_1d(quest_types);i++){
	quest_to_sprite[? quest_types[i]]=quest_sprites[i]
}

//item to item types, e.g. EQUIP -> SLOT, POTION -> HP
type_to_sub=ds_map_create()
type_to_sub[?"equip"]=slot_to_sprite
type_to_sub[?"potion"]=pot_to_sprite
type_to_sub[?"quest"]=quest_to_sprite

process_items(open_json("items.json")) //open all items and add <33

#endregion
#region quest

#endregion
#region Equipment
equipment=ds_map_create()

//index pointing to item eq
for(var i=0;i<array_length_1d(equip_types);i++){
	equipment[? equip_types[i]]=-1
}
#endregion
#region color,mouse,state
//colors
globalvar c_background,c_empty_slot,c_slot_border_empty,c_slot_border,c_empty_slot_hover,c_mint;
c_background=make_color_rgb(43, 44, 46)
c_empty_slot=make_color_rgb(36, 36, 36)
c_empty_slot_hover=make_color_rgb(66,66 , 66)
c_slot_border=make_color_rgb(197,197,197)
//c_slot_border=make_color_rgb(255,255,255)
c_slot_border_empty=make_color_rgb(66,66,66)
c_mint=make_color_rgb(255,255,255)

//gui mouse 
globalvar mx, my;

//state
enum states{
	idle,
	wander,
	alert,
	attack
}
#endregion
#region stats
//base, unaffected by external sources
stat_types=["Health","Mana","Attack","Defense","Agility","Intellect"]
//mostly for potions, on which stat they are gonna increase
sub_to_stat=ds_map_create()
sub_to_stat[?"hp"]=stat_types[0]
sub_to_stat[?"mp"]=stat_types[1]

base_stats=ds_map_create()
for (var i =0;i<array_length_1d(stat_types);i++) {
	base_stats[? stat_types[i]]=i<2?100:5
}
//armor stats, only gear
armor_stats=ds_map_create()
for (var i =0;i<array_length_1d(stat_types);i++) {
	armor_stats[? stat_types[i]]=0
}
//current stats, volatile
//armory will display max stats, but health bar UI will display current
stats=ds_map_create()
for (var i =0;i<array_length_1d(stat_types);i++) {
	stats[? stat_types[i]]=base_stats[? stat_types[i]] + armor_stats[? stat_types[i]]
}
//max stats, pretty much base+armor
max_stats=ds_map_create()
for (var i =0;i<array_length_1d(stat_types);i++) {
	max_stats[? stat_types[i]]=stats[? stat_types[i]]
}
#endregion