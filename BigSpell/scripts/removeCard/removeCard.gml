/// @desc removeCard(Card) - removes a card from hand will return false if it doesnt exist in hand
/// @arg Card is the card you wish to remove
with(oHand){
	i = ds_list_find_index(hand, argument0);
	if(i != -1){
		ds_list_delete(hand, i);
		resetPositions();
		return true;
	}
	return false;
}
