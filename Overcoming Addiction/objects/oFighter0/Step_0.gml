/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){ // Check for the left arrow key being held down
	right = 1;
}
else{
	right = 0;
}
if(keyboard_check(vk_left) or keyboard_check(ord("A"))) {// Check for the left arrow key being held down
	left = -1;
}
else{
	left = 0;
	}
jump = keyboard_check_pressed(vk_space);
lightAttack = mouse_check_button_pressed(mb_left);
heavyAttack = mouse_check_button_pressed(mb_right);
dash = keyboard_check_pressed(vk_shift);

alive = (hp > 0);
if (hp < 0){
	hp = 0;
}
switch(state){
	case PLAYERSTATE.FREE: 
		PlayerState_Free();
		break;
		
	case PLAYERSTATE.DASH:
		PlayerState_Dash();
		break;
		
	case PLAYERSTATE.ATTACK_LIGHT:
		PlayerState_Attack_Light();
		break;
		
	case PLAYERSTATE.ATTACK_HEAVY:
		PlayerState_Attack_Heavy();
		break;
		
	case PLAYERSTATE.DEAD:
		PlayerState_Dead();
}