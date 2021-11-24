// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ComputerState_Free(){
	//movement selection AI
	if(oFighter0.x > x+100){
			move = 1;	
	}
	else if(oFighter0.x < x-100){
			move = -1;
	}
	else{
		move = 0;
	}
	if (oFighter0.y + 5  < y){
		jump = 1;
	}
	else{
		jump = 0;
	}
	
	
	

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
	/*
	if(lightAttack){
		state = COMPUTERSTATE.ATTACK_LIGHT;
	}
	if(heavyAttack){
		state = COMPUTERSTATE.ATTACK_HEAVY;
	}
	*/
	if(!alive){
		state = COMPUTERSTATE.DEAD;	
	}
}
