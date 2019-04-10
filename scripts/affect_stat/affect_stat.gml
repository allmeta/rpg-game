var stat=argument0 //what stat to refill
var effect=argument1 //by how much
o_global.stats[? stat]+=clamp(effect, 0, o_global.max_stats[? stat])
//o_global.max_stats[? stat]+=effect