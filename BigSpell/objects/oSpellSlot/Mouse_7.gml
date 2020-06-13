/// @description Insert description here
// You can write your code in this editor

//checks if a card is dragged onto it
if(global.activeCard != undefined){
	size = ds_list_size(spellList);
	//checks to see if it should be a base spell or a modifier
	if(size == 0){
		if(object_is_ancestor(global.activeCard.object_index, oBaseSpell)){
			playCard(global.activeCard);
		}
	} else {
		if(object_is_ancestor(global.activeCard.object_index, oBaseMod)){
			global.activeCard.target = ds_list_find_value(spellList, 0);
			playCard(global.activeCard);
		}
	}
}