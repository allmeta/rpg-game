/// @description Insert description here
// You can write your code in this editor
mx=keyboard_check(ord("D")) - keyboard_check(ord("A"))
my=keyboard_check(ord("S"))-keyboard_check(ord("W"))
m= (mx!=0 || my!=0)

vx=spd*mx
vy=spd*my


if(tile_meeting(x+vx,y,layer_tilemap_get_id("Collision"))){
	while (!tile_meeting(x+sign(vx),y,layer_tilemap_get_id("Collision"))){
		x+=sign(vx)	
	}
	vx=0
}
if(tile_meeting(x,y+vy,layer_tilemap_get_id("Collision"))){
	while (!tile_meeting(x,y+sign(vy),layer_tilemap_get_id("Collision"))){
		y+=sign(vy)	
	}
	vy=0
}
if(mx!=0&&my!=0){
	vx/=1.4
	vy/=1.4
}

x+=int64(vx)
y+=int64(vy)

dir=(3-floor((point_direction(x,y,mouse_x,mouse_y))/90+0.5))
if dir < 0 dir = 3
if(m){
  image_speed=.5
}else{
  image_speed=0
  image_index=dir*frames
}

depth=-y