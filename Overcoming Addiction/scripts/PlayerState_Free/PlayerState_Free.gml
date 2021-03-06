// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	move = left + right;
	hsp = move*moveSpeed;
	if(vsp < 15)
		vsp+= grav;
	
	if(place_meeting(x, y+1, oBrick)){
			vsp = jump * -jumpSpeed;
	}
	
	//horizontal Collision
	if(place_meeting(x+(hsp*2), y, oBrick)){ //if the next move would place you into a wall
		while(!place_meeting(x+sign(hsp), y, oBrick)){ //move as close to the wall as possible 
			x += sign(hsp);
		}
		hsp = 0; //set speed to 0
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
		sprite_index = sFighterAir;
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
			sprite_index = sFighter;
		}
		else{
			sprite_index = sFighterR;
		}
	}
	
	if(hsp != 0){
		image_xscale = sign(move);
	}
	if(dash){
		state = PLAYERSTATE.DASH;	
	}
	if(lightAttack){
		state = PLAYERSTATE.ATTACK_LIGHT;
	}
	if(heavyAttack){
		state = PLAYERSTATE.ATTACK_HEAVY;
	}
	if(!alive){
		state = PLAYERSTATE.DEAD;	
	}
}
