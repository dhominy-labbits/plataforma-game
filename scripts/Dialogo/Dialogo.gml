// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogo()constructor {
	_dialogos = [];
	
	add = function (_sprite, _mensagem) 
	{
		array_push(_dialogos, 
		{
			sprite: _sprite,
			mensagem: _mensagem,
		})
	}
	
	pop = function() 
	{
		var _t = array_first(_dialogos);
		array_delete(_dialogos,0,1);
		
		return _t;
	}
	
	count = function()
	{
		return array_length(_dialogos);
	}
}