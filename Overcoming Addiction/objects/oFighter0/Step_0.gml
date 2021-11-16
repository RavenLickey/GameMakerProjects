/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_right) or keyboard_check(ord("D"))) // Check for the left arrow key being held down
	right = 1;
else
	right = 0;
	
if(keyboard_check(vk_left) or keyboard_check(ord("A"))) // Check for the left arrow key being held down
	left = -1;
else
	left = 0;
	
jump = keyboard_check_pressed(vk_space);

move = left + right;
hsp = move*moveSpeed;
if(vsp < 15)
	vsp+= grav;
	
if(place_meeting(x, y+1, oBrick)){
		vsp = jump * -jumpSpeed;
}

//horizontal Collision
if(place_meeting(x+hsp, y, oBrick)){
	while(!place_meeting(x+sign(hsp), y, oBrick)){
		x += sign(hsp);
	}
	hsp = 0;
}
//Vertical Collision
if(place_meeting(x, y+vsp, oBrick)){
	while(!place_meeting(x, y+sign(vsp), oBrick)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;


//Animation
if(!place_meeting(x, y+1, oBrick)){
	sprite_index = sBottleAir;
	image_speed = 0;
	if(sign(vsp > 0)) {
		image_index = 1;
	}
	else{
		image_index = 0;
	}
}
else{
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sBottle;
	}
	else{
		sprite_index = sBottleR;
	}
}
if(hsp != 0){
	image_xscale = -sign(hsp);
}