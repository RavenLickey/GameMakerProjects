 /// @description Insert description here
// You can write your code in this editor
//movement variables
grav = 1;
hsp = 0;
vsp = 0;
jumpSpeed = 20;
moveSpeed = 4;

alive = 1;

//hp variables
hp = 100;
hpMax = hp;
hpWidth = 482;
hpHeight = 32;
hpx = 98;
hpy = 34;


hitByAttack = ds_list_create();
state = PLAYERSTATE.FREE;


enum PLAYERSTATE{
	FREE,
	DASH,
	ATTACK_LIGHT,
	ATTACK_HEAVY,
	DEAD
}