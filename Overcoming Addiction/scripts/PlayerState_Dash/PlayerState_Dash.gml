// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Dash(){
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

	//DASH
	if(!place_meeting(x+(move), y, oBrick) and move != 0){
		if(place_meeting(x+(move*100), y, oBrick)){ //if the next move would place you into a wall
			while(!place_meeting(x+sign(hsp), y, oBrick)){ //move as close to the wall as possible 
				x += sign(hsp);
			}
			hsp = 0; //set speed to 0
		}
		else{
			x += move*100;
			audio_play_sound(sndPunch3, 10, false);
			}
	}
	dash = false;
	state = PLAYERSTATE.FREE;
	
}
