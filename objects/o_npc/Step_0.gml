/// @description Insert description here
// You can write your code in this editor
depth=-y

if(place_meeting(x,y,o_player)){
	collided=true
}else collided = false

if not conv_obj{
	script_execute(states_array[state])
}