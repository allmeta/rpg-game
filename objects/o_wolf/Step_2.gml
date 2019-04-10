/// @description Insert description here
// You can write your code in this editor
dir = 3 - floor(point_direction(xprevious,yprevious,x,y)/90)
if(image_index>dir*frames+mimax || image_index < dir*frames){
	image_index=dir*frames	
}