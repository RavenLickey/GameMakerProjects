/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left) or keyboard_check(ord("A"))){
	image_angle = image_angle+5;
}
if (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	image_angle = image_angle-5;
}
if (keyboard_check(vk_up) or keyboard_check(ord("W"))){
	motion_add(image_angle, 0.05);
}
if (keyboard_check(vk_down) or keyboard_check(ord("S"))){
	motion_add(image_angle, -0.05);
}
move_wrap(true, true, sprite_width/2);

if(keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left)){
	var inst = instance_create_layer(x,y,"Instances", oBullet);
	inst.direction = image_angle; 
}