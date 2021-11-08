/// @description Draw Values
// You can write your code in this editor
//set Draw Properties
draw_set_colour(c_white);
draw_set_font(fntGame);

//Draw the player Score
draw_set_halign(fa_left);
draw_text(8, 8, "Score: " + string(global.playerScore));

//Draw the high score
draw_set_halign(fa_right);
draw_text(room_width-8, 8, "High Score: " + string(global.highScore));

//draw the player lives as sprites
var _x = (room_width/2) - (32*(global.playerLives-1));
repeat(global.playerLives){
draw_sprite_ext(sBat, 0, _x, room_height-16, 0.75, 0.75, 1, c_white, 0.5);
_x +=64;
}