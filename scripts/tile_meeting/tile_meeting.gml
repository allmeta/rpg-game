var xx,yy,tilemap,xp,yp,meeting;

xx=argument0
yy=argument1
tilemap=argument2

xp=x
yp=y

x=xx
y=yy

meeting =		tilemap_get_at_pixel(tilemap,bbox_right,bbox_top+sprite_height/2) ||
							tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) ||
							tilemap_get_at_pixel(tilemap,bbox_left,bbox_top+sprite_height/2) ||
							tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom)

x=xp
y=yp

return meeting