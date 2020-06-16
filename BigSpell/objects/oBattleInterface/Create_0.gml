/// @description Instantiating list of spellslots
// creates the spellslots and holds them in a list

slots = ds_list_create();
for(i = 0; i < oPlayer.spellSlots; i++) {
	s = instance_create_layer(x - i * 100 + 600, y, "lSlots", oSpellSlot);
	ds_list_add(slots, s.id);
}