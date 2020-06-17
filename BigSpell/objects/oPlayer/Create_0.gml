/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
maxSpeed = 10;
shiftSpeed = 20;
shiftLength = 10;
shiftCounter = 0;

//Movement Booleans
shiftPressed = false;


enum states {
	normal,
	shift,
	stunned,
	channel,
}
state = states.normal;