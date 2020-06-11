/// @description Insert description here
// You can write your code in this editor
if(global.activeCard != undefined){
	with(global.activeCard){	
		x = other.x;
		y = other.y;
		removeCard(global.activeCard);
		global.activeCard = undefined;
	}
}