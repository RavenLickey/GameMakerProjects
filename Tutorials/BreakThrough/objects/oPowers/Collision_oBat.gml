/// @description Description Powerup!
// You can write your code in this editor
switch(image_index){ //check to see what frame is being used by the sprite
	case 0: //Maker the player bat bigger
	with(oBat){
		image_xscale= 1.5;
		alarm[0] = room_speed * 10;
	}
	break;
	case 1: //slow down the ball
	with (oBall){
		speed = spd;
	}
	break;
}
instance_destroy();