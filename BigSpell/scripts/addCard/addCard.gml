/// @desc addCard(Card) - adds a card to hand but will not add above hand size limit
/// @arg Card is the card you wish to add

with(oHand){
	with(instance_create_layer(x, y, "lHand", argument0)){
		global.activeCard = id;
	}
}
