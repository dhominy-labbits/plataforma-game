// Os recursos de script mudaram para a v2.3.0; veja
/// @desc Fade(room, duration,color)
/// @arg room
/// @arg duration
/// @arg color

var _targetRoom = argument0;
var _durarion = argument1;
var _color = argument2;

var _instance = instance_create_depth(0,0,0, obj_fade);
with (_instance)
{
	targetRoom = _targetRoom;
	durarion = _durarion;
	color = _color;
}