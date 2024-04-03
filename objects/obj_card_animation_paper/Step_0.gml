/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(x_pos!=noone&&y_pos!=noone){
	move_towards_point(x_pos,y_pos,move_speed);
}

if(abs(x_pos-x)<=10&&abs(y_pos-y)<=10){
	instance_destroy(self);
	speed = 0;
}