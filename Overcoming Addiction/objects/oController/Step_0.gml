/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_anykey)){
	switch(room){
		case rmStart:
			room_goto(rmBottleFight);
			break;
		case rmWin: 
		case rmLose:
		audio_stop_all();
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
		var tend = get_timer()+10;
		if(get_timer() > tend)
			room_goto(rmLose);
	}
}

