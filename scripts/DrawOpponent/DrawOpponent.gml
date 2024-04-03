// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DrawOpponent(time){
	if(!ds_list_empty(deck_list)){
		var card = deck_list[|ds_list_size(deck_list)-1];
		ds_list_delete(deck_list,ds_list_size(deck_list)-1);
		ds_list_add(opponent_list,card);
		//card.facing_up = true;
		audio_play_sound(snd_card_dealt,10,false);
		var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation);
		card_animation.x_pos = 200+(time*100);
		card_animation.y_pos = 150;
		card.x = 200+(time*100);
		card.y = 150;
	}
}