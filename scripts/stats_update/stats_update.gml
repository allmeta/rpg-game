// go through equipped items and add stats to armor stats kkkkk yeah
//Reset armor stats xdd scuffed

with o_global{
	var check=false
	for(var i=0;i<array_length_1d(equip_types);i++){
		var k=equipment[? equip_types[i]]
		if k==-1 continue
		var l=items[# k,_STATS]
		for (var j=0;j<ds_list_size(l);j++){
			//we want to reset armor thing to 0 if it isn't
			if !check armor_stats[? stat_types[j]]=0
			armor_stats[? stat_types[j]]+=l[| j]
		}
		check=true
	}
	

	//only change max stat.
	//At the end, merge all shit ish
	for (var i =0;i<array_length_1d(stat_types);i++) {
		//if it never checked :SS aka if only one item was equip
		if !check armor_stats[? stat_types[i]]=0
		//add
		max_stats[? stat_types[i]]=base_stats[? stat_types[i]] + armor_stats[? stat_types[i]]
	}
}