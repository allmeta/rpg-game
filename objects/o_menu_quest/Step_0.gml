/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left){
	if point_in_rectangle(mx,my,x,y,rhh,tab_y2){
		show_active=true
	}
	else if point_in_rectangle(mx,my,rhh,y,rh,tab_y2){
		show_active=false
	}
}