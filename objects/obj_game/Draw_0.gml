/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
DrawList(deck_list,50,100);
DrawList(discard_list,500,100);

DrawHand(opponent_list,200,150);
DrawHand(player_list,200,500);

draw_text(600,100,"player: "+string(player_score));
draw_text(600,200,"opponent: "+string(opponent_score));