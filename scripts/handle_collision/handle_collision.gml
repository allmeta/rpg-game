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