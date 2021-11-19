/// @description Insert description here
// You can write your code in this editor
//movement variables
grav = 1;
hsp = 0;
vsp = 0;
jumpSpeed = 20;
moveSpeed = 4;

image_xscale = -1; //sprite was drawn facing left, I need him to face right

//hp variabls
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
	ATTACK_LIGHT,
	ATTACK_HEAVY,
	DEAD
}