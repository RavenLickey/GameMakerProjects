/// @description Insert description here
// You can write your code in this editor
hsp = keyboard_check(vk_right)-keyboard_check(vk_left);
vsp = keyboard_check(vk_down)-keyboard_check(vk_up);

if place_meeting(x+hsp, y, oWall){
	hsp = 0;
}
if place_meeting(x, vsp+ y, oWall){
	vsp = 0;
}

if place_meeting(x+hsp, y, oEnemy){
	game_restart();
}

x += hsp * moveSpeed;
y += vsp * moveSpeed;
