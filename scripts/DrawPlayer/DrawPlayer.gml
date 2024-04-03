// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DrawPlayer(time){
	if(!ds_list_empty(deck_list)){
		var card = deck_list[|ds_list_size(deck_list)-1];
		ds_list_delete(deck_list,ds_list_size(deck_list)-1);
		card.facing_up = true;
		ds_list_add(player_list,card);
		audio_play_sound(snd_card_dealt,10,false);
		var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation);
		//show_debug_message(string(card.x)+","+string(card.y));
		card_animation.x_pos = 200+(time*100);
		card_animation.y_pos = 500;
		card.x = 200+(time*100);
		card.y = 500;
		
		switch(time){
			case 0:
			instance_create_layer(card.x,card.y,"Instances",obj_player_area1);
			break;
			case 1:
			instance_create_layer(card.x,card.y,"Instances",obj_player_area2);
			break;
			case 2:
			instance_create_layer(card.x,card.y,"Instances",obj_player_area3);
			break;
		}
	}
}