/// @description Drawing text
// drawing the text onto the interface. IDK why but it has
// to be done in a draw event.
draw_self();
size = ds_list_size(slots);
for(i = 0; i < size; i++)
{
	draw_text(x - i * 100 + 600, y - 90, string(size - i));
}