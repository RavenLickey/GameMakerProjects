/// @description Insert description here
// You can write your code in this editor
instance_destroy();
with(oController){
	alarm[1] = room_speed;
}
lives -= 1;
repeat(50){
	instance_create_layer(x, y, "Instances", oDebris);
}
