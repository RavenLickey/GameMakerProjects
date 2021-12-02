/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rmBottleFight: 
		//draw_text(20, 20, "SCORE: " + string(score));
		//draw_text(20, 40, "LIVES: " + string(lives));
		break;
		
	case rmStart:
	draw_set_halign(fa_center); //center align (initial alignment is left "justified")
		var c = c_black;
		draw_text_transformed_colour(room_width/2, 100, "BEAT THE BOTTLE", 3, 3, 0, c, c, c, c, 1);
		
		draw_text(room_width/2, 200,
		@"Beat the bottle to win!
		
		LEFT/RIGHT or A/D: Move
		SPACE: Jump
		SHIFT: Dash
		LEFT CLICK: Light Attack
		RIGHT CLICK: Heavy Attack	
		
		>>PRESS ANY KEY TO START<<");
		draw_set_halign(fa_left); //reset the alignment
		break;
	
	case rmWin:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_colour(room_width/2, 200, "YOU WON!", 4, 4, 0, c, c, c, c, 1);
		draw_text(room_width/2, 300, "PRESS ANY KEY TO RESTART");
		draw_set_halign(fa_left);
		break;
		
	case rmLose:
		draw_set_halign(fa_center);
		var c= c_red;
		draw_text_transformed_colour(room_width/2, 150, "GAME OVER", 3, 3, 0, c,c,c,c, 1);
		draw_text(room_width/2, 300, "PRESS ANY KEY TO RESTART");
		draw_set_halign(fa_left);
		break;
}
