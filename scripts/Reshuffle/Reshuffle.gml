// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function Reshuffle(){
	audio_play_sound(snd_shuffle,10,false);
	while(!ds_list_empty(discard_list)){
		var card = discard_list[|ds_list_size(discard_list)-1];
		ds_list_delete(discard_list,ds_list_size(discard_list)-1);
		card.facing_up = false;
		ds_list_add(deck_list,card);
		audio_play_sound(snd_card_dealt,10,false);
		var card_animation = instance_create_layer(card.x,card.y,"Instances",obj_card_animation);
		//show_debug_message(string(card.x)+","+string(card.y));
		card_animation.x_pos = 50;
		card_animation.y_pos = 100+(15*ds_list_size(deck_list));
		card.x = 50;
		card.y = 100+(15*ds_list_size(deck_list));
	}
}