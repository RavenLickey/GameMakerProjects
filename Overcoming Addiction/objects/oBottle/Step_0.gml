/// @description Insert description here
// You can write your code in this editor
alive = (hp > 0);
jump = 0;
switch(state){
	case COMPUTERSTATE.FREE: 
		ComputerState_Free();
		break;
		/*
	case COMPUTERSTATE.ATTACK_LIGHT:
		ComputerState_Attack_Light();
		break;
		
	case COMPUTERSTATE.ATTACK_HEAVY:
		ComputerState_Attack_Heavy();
		break;
		*/
	case COMPUTERSTATE.DEAD:
		PlayerState_Dead();
		break;
}