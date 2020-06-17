/// @description Insert description here
// You can write your code in this editor
enum gamestates {
	init,
	pause,
	wait,
	action
}

enum rulestates {
	draw,
	play,
	action,
	choice
}
global.battle = self;
player0 = instance_create_depth(x, y, 0, oPlayer);
player1 = instance_create_depth(x, y, 0, oPlayer);
hand0 = instance_create_depth(x, y, 0, oHand);
hand1 = instance_create_depth(x, y + 200, 0, oHand);
pile0 = instance_create_depth(x, y, 0, oPile);
pile1 = instance_create_depth(x, y, 0, oPile);
button = instance_create_depth(x, y, 0, oButton);
gamestate = gamestates.init;
rulestate = rulestates.choice;
currentPlayer = 0;