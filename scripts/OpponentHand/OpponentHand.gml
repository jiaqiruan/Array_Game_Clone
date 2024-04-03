// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function OpponentHand(){
	var index = irandom_range(0,ds_list_size(opponent_list)-1);
	opponent_hand = opponent_list[|index];
	opponent_hand.y += 50;
}