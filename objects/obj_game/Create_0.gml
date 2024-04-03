randomize();
opponent_hand = noone;
player_hand = noone;
card_dealt = false;
card_discarded = false;
opponent_choose = false;
opponent_score = 0;
player_score = 0;

countdown = 1.5*room_speed;
timer = countdown;
deck_list = ds_list_create();
player_list = ds_list_create();
opponent_list = ds_list_create();
discard_list = ds_list_create();

for(var i=0;i<8;i++){
	var rockcard = instance_create_layer(0,0,"Instances",obj_card);
	rockcard.cardtype = "rock";
	ds_list_add(deck_list,rockcard);
	
	var scissorcard = instance_create_layer(0,0,"Instances",obj_card);
	scissorcard.cardtype = "scissor";
	ds_list_add(deck_list,scissorcard);
	
	var papercard = instance_create_layer(0,0,"Instances",obj_card);
	papercard.cardtype = "paper";
	ds_list_add(deck_list,papercard);
}
ds_list_shuffle(deck_list);

phase = "phase_before";