counter++
handle_collision()
x+=vx
y+=vy
if counter>room_speed*3{
	var r=choose(0,1)
	if r==0{
		state=states.idle
		
	}else{
		dir=irandom_range(0,359)
		if distance_to_point(spawn_x,spawn_y)>64{
			dir=point_direction(x,y,spawn_x,spawn_y)
		}
		counter=0
		vx=lengthdir_x(spd,dir)
		vy=lengthdir_y(spd,dir)
	}
}

//if position_meeting()
//image_xscale=sign(vx)