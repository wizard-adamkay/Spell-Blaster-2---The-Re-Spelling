/// @desc playCard(Card) - places the card specified into the spell slot
/// @arg Card is the card you wish to play
//This needs to be called from a spellslot object
card = argument0;
ds_list_add(spellList, card);
with(card){
	depth = 0 - other.size;
	x = other.x;
	y = other.y + other.size * 20;
	global.activeCard = undefined;
}
removeCard(card);