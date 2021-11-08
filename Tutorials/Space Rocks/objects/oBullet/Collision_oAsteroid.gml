/// @description Insert description here
// You can write your code in this editor
instance_destroy();
score += 50;
with(other){
	instance_destroy();
	if(sprite_index == sAsteroidLarge){
		repeat(2){
			var newAsteroid = instance_create_layer(x,y, "Instances", oAsteroid);
			newAsteroid.sprite_index = sAsteroidMedium;
		}
	}
	else if (sprite_index == sAsteroidMedium){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances", oAsteroid);
			new_asteroid.sprite_index = sAsteroidSmall;
		}
	}
	repeat(50){
		instance_create_layer(x,y,"Instances", oDebris);
	}
}