/// @description Health Bar
// You can write your code in this editor

draw_sprite(sHealthBackground, 0, hpx, hpy);
draw_sprite_stretched(sHealthColor, 0, hpx, hpy, (hp/hpMax)*hpWidth, hpHeight);
draw_sprite(sHealthBorder, 0, hpx, hpy);
