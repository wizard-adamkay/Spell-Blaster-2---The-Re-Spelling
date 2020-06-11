/// @desc handContains(Card) - returns true if the card is in hand
/// @arg Card is the card you wish to check
with(oHand){
	i = ds_list_find_index(hand, argument0);
	if(i != -1){
		return true;
	}
	return false;
}
