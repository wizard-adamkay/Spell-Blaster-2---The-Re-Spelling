/// @desc playCard(Card) - places the card specified into the spell slot
/// @arg Card is the card you wish to play
//This needs to be called from a spellslot object. This script does check to
//ensure that 2 base cards cant be placed on one slot.
card = argument0;
size = ds_list_size(spellList);
with(card){
	if(other.size == 0 ^^ object_is_ancestor(global.activeCard.object_index, oBaseMod)){
		ds_list_add(other.spellList, id);
		depth = 0 - other.size;
		x = other.x;
		y = other.y + other.size * 20;
		global.activeCard = undefined;
	} else {
		audio_play_sound(fxError, 1, false);
	}
}