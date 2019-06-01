/// @description Insert description here
// You can write your code in this editor
mmx=keyboard_check(ord("D")) - keyboard_check(ord("A"))
mmy=keyboard_check(ord("S"))-keyboard_check(ord("W"))
if mmx==0 and mmy==0 {
	image_speed=0;
	image_index=dir*frames
	exit;
}

m=point_direction(0,0,mmx,mmy)

vx=lengthdir_x(spd,m)
vy=lengthdir_y(spd,m)

handle_collision()

x+=int64(vx)
y+=int64(vy)

dir=(3-floor((point_direction(xprevious,yprevious,x,y))/90+0.5))
if dir < 0 dir = 3
if(mmx!=0 or mmy!=0){
  image_speed=.5
}else{
  image_speed=0
  image_index=dir*frames
}

depth=-y