/// @description Useless color blend
draw_self()

gpu_set_blendenable(0)

gpu_set_colorwriteenable(0,0,0,1)

var x1 = x-sprite_xoffset
var y1 = y-sprite_yoffset

draw_set_alpha(0)
draw_rectangle(x1,y1,x1+sprite_width,y1+sprite_height,0)
draw_set_alpha(1)

gpu_set_blendenable(1)

gpu_set_colorwriteenable(1,1,1,1)