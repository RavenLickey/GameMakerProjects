/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_anykey)){
	switch(room){
		case rmStart:
			room_goto(rmBottleFight);
			break;
		case rmWin: 
		case rmLose:
		game_restart();
		break;
	}
}

if room == rmBottleFight{ //once a fighter's hp drops at least to 0 adjust step
	if (oBottle.hp <= 0){
		var tend = get_timer()+10;
		if(get_timer() > tend)
			room_goto(rmWin);
	}
	if (oFighter0.hp <= 0){
		room_goto(rmLose);
	}
}

if(step >= 5*room_speed){ //if step is positive, wait 5 seconds then go to the win room
	room_goto(rmWin);
}
if(step <= -5*room_speed){ //if step is negative, wait 5 seconds then go to the lose room
	room_goto(rmLose);
}