/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
//show_debug_message(string(ds_list_size(opponent_list)));
for(var index =0;index<ds_list_size(deck_list);index++){
		var card = deck_list[|index];
		card.x = 50;
		card.y = 100+(index*15);
}

for(var index =0;index<ds_list_size(discard_list);index++){
		var card = discard_list[|index];
		card.x = 500;
		card.y = 100+(index*15);
}


if(keyboard_check_pressed(vk_space)){
	
}

switch(phase){
	case "phase_before":
		timer--;
		if(timer<=0){
			phase = "phase_draw";
			card_dealt = false;
		}
		break;
	case "phase_draw":
		if(!card_dealt){
			NewRound();
			card_dealt = true;
		}
		timer--;
		if(timer<=0){
			timer = countdown
			phase = "phase_play";
			opponent_choose = false;
		}
		break;
	case "phase_play":
		if(!opponent_choose){
			OpponentHand();
			opponent_choose = true;
		}
		if(mouse_check_button_pressed(mb_left)){
			if(collision_point(mouse_x, mouse_y, obj_player_area1, false, true)){
				player_hand = player_list[|0];
				player_hand.y -= 50;
				opponent_hand.facing_up = true;
				phase = "phase_score";
			}
			else if(collision_point(mouse_x, mouse_y, obj_player_area2, false, true)){
				player_hand = player_list[|1];
				player_hand.y -= 50;
				opponent_hand.facing_up = true;
				phase = "phase_score";
			}
			else if(collision_point(mouse_x, mouse_y, obj_player_area3, false, true)){
				player_hand = player_list[|2];
				player_hand.y -= 50;
				opponent_hand.facing_up = true;
				
				phase = "phase_score";
			}
		}
		break;
	case "phase_score":
		DetermineScore();
		phase = "phase_discard";
		card_discarded = false;
		break;
	case "phase_discard":
		timer--;
		if(timer<=0){
			if(!card_discarded){
				DiscardHands();
				card_discarded = true;
			}
			timer = countdown
			if(ds_list_empty(deck_list)){
				Reshuffle();
				phase = "phase_before";
			}else{
				phase = "phase_before";
			}
		}
		break;
}

