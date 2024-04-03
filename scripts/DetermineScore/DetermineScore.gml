// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DetermineScore(){
	switch(player_hand.cardtype){
			case "rock":
				switch(opponent_hand.cardtype){
					case "rock":
						//tie
						audio_play_sound(snd_even,10,false);
						break;
					case "scissor":
						//player win
						audio_play_sound(snd_win,10,false);
						player_score++;
						break;
					case "paper":
						//opponent win
						audio_play_sound(snd_lose,10,false);
						opponent_score++;
						break;
				}
				break;
			case "scissor":
				switch(opponent_hand.cardtype){
					case "rock":
						//opponent win
						audio_play_sound(snd_lose,10,false);
						opponent_score++;
						break;
					case "scissor":
						//tie
						audio_play_sound(snd_even,10,false);
						break;
					case "paper":
						//player win
						audio_play_sound(snd_win,10,false);
						player_score++;
						break;
				}
				break;
			case "paper":
				switch(opponent_hand.cardtype){
					case "rock":
						//plauer win
						audio_play_sound(snd_win,10,false);
						player_score++;
						break;
					case "scissor":
						//opponent win
						audio_play_sound(snd_lose,10,false);
						opponent_score++;
						break;
					case "paper":
						//tie
						audio_play_sound(snd_even,10,false);
						break;
				}
				break;
		}
}