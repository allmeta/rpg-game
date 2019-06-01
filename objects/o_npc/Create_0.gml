/// @description Insert description here
// You can write your code in this editor

collided=false

conv_text[0]=""

conv_speaker[0]=""
conv_next_line[0]=-1
name="default"

conv_obj=noone

image_speed=1/10

anim_yscale=0

//states
counter=0
state=states.idle

states_array[states.idle]=npc_state_idle
states_array[states.wander]=npc_state_wander

//move
dir=0
spd=0.25
vx=0
vy=0

spawn_x=x
spawn_y=y