/// @description Check Room restart
// You can write your code in this editor
if instance_number(oBrick) <= 0{
	room_restart();
}
else{
	if state == "GAMEOVER"{
		if keyboard_check(vk_anykey){
			audio_play_sound(sndClick, 0, false);
			global.playerScore = 0;
			global.playerLives = 3;
			room_restart();
		}
	}
}