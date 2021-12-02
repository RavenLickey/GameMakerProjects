grav = 1;
hsp = 0;
vsp = 0;
jumpSpeed = 20;
moveSpeed = 4;

//hp variabls
hp = 100;
hpMax = hp;
hpWidth = 482;
hpHeight = 32;
hpx = (room_width/2)+96;
hpy = 34;

strikeCount = 0;
startTimer = 1; // timer bool
timer = 0;
timer2 = 0;
hitByAttack = ds_list_create();
state = COMPUTERSTATE.CHASE_PLAYER;


enum COMPUTERSTATE{
	CHASE_PLAYER,
	AVOID_PLAYER, 
	ATTACK_LIGHT,
	ATTACK_HEAVY,
	DEAD
}
