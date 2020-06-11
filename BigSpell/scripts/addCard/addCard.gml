/// @desc addCard(Card) - adds a card to hand but will not add above hand size limit
/// @arg Card is the card you wish to add

with(oHand){
	event_user(0);
	i = ds_list_size(hand);
	if(i < maxSize){
		with(instance_create_layer(x + 128 * i, y, "lHand", argument0)){
			ds_list_add(other.hand, id);
		}
		resetPositions();
		return true;
	}
	return false;
}
