/// @description Insert description here
// You can write your code in this editor
alive = (hp > 0);
if (hp < 0){
	hp = 0;
}
jump = 0;
moveSpeed = 3;
timer++;


switch(state){
	case COMPUTERSTATE.CHASE_PLAYER: 
		ComputerState_Chase_Player();
		break;
		
	case COMPUTERSTATE.ATTACK_LIGHT:
		ComputerState_Attack_Light();
		break;
		
	case COMPUTERSTATE.AVOID_PLAYER:
		ComputerState_Avoid_Player();
		break;
		
		/*
	case COMPUTERSTATE.ATTACK_HEAVY:
		ComputerState_Attack_Heavy();
		break;
*/
	case COMPUTERSTATE.DEAD:
		ComputerState_Dead();
		break;
}