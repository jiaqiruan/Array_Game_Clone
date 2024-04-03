// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function DrawList(list_given, x_pos, y_pos){
	if(!ds_list_empty(list_given)){
		for(var index =0;index<ds_list_size(list_given);index++){
			var card = list_given[|index];
			//card.x = x_pos;
			//card.y = y_pos+(index*15);
			if(!card.facing_up){
				draw_sprite(spr_card_back,0,card.x,card.y);
			}else{
				switch(card.cardtype){
					case "rock":
						draw_sprite(spr_card_front,0,card.x,card.y);
						draw_sprite(spr_rock,0,card.x,card.y);
						break;
					case "scissor":
						draw_sprite(spr_card_front,0,card.x,card.y);
						draw_sprite(spr_scissors,0,card.x,card.y);
						break;
					case "paper":
						draw_sprite(spr_card_front,0,card.x,card.y);
						draw_sprite(spr_paper,0,card.x,card.y);
						break;
				}
			}
		}
	}
	
}