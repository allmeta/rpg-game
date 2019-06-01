counter++
if counter>room_speed*3{
	var r=choose(0,1)
	if r==0{
		counter=0
	}else{
		state=states.wander
	}
}