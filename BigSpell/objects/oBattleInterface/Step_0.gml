/// @description Checking for button presses
// handles selecting the slot for the picked up card
if(global.activeCard != undefined){
	for(i = 1; i <= ds_list_size(slots); i++){
		if (keyboard_check_pressed(ord(i))){
			with(ds_list_find_value(slots, ds_list_size(slots) - i)){
				playCard(global.activeCard);
			}
		}
	}
}