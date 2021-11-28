// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Heavy(){
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

	//Start of the attack
	if(sprite_index!= sFighterHeavy){
		sprite_index = sFighterHeavy;
		image_speed = 1;
		ds_list_clear(hitByAttack);
	}
	//use attack hitbox and check for hits
	mask_index = sFighterHeavyHB;
	var hitByAttackNow = ds_list_create(); 
	var hits = instance_place_list(x,y, oBottle, hitByAttackNow, false);
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			//If this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[|i];//lets us look at the entry in ds_list, could also use ds_list_find_value(hitByAttackNow, i);
			if(ds_list_find_index(hitByAttack,hitID) == -1){ //if we hit something that is not on the list of things that we have hit
				ds_list_add(hitByAttack, hitID); //add the hit to the list
				with(hitID){
					oBottle.hp -= 10; //decrease the hp of the enemy by 10
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sFighter;
	if (animationEnd()){
		sprite_index = sFighter;
		state = PLAYERSTATE.FREE;
	}
}