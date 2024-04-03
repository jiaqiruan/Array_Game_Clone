// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DiscardPlayer(){
	if(!ds_list_empty(player_list)){
		var card = player_list[|ds_list_size(player_list)-1];
		ds_list_delete(player_list,ds_list_size(player_list)-1);
		card.facing_up = true;
		ds_list_add(discard_list,card);
		audio_play_sound(snd_card_dealt,10,false);
		switch(card.cardtype){
			case "rock":
				var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation_rock);
				card_animation.x_pos = 500;
				card_animation.y_pos = 100+(15*ds_list_size(discard_list));
				card.x = 500;
				card.y = 100+(15*ds_list_size(discard_list));
				break;
			case "paper":
				var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation_paper);
				card_animation.x_pos = 500;
				card_animation.y_pos = 100+(15*ds_list_size(discard_list));
				card.x = 500;
				card.y = 100+(15*ds_list_size(discard_list));
				break;
			case "scissor":
				var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation_scissor);
				card_animation.x_pos = 500;
				card_animation.y_pos = 100+(15*ds_list_size(discard_list));
				card.x = 500;
				card.y = 100+(15*ds_list_size(discard_list));
				break;
		}
		
		//show_debug_message(string(card.x)+","+string(card.y));
		
	}
}