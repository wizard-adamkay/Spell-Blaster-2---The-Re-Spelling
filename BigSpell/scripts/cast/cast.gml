/// @desc cast() - casts all spells held in this spell slot
//This needs to be called from a spellslot object

size = ds_list_size(spellList);
if(size > 1){
	for(i = 1; i < size; i++){
		with(ds_list_find_value(spellList, i)){
			event_user(0);
		}
	}
}
with(ds_list_find_value(spellList, 0)){
	event_user(0);
}