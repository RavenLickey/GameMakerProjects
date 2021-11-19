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

hitByAttack = ds_list_create();
state = COMPUTERSTATE.FREE;


enum COMPUTERSTATE{
	FREE,
	/*ATTACK_LIGHT,
	ATTACK_HEAVY,
	*/
	DEAD
}
