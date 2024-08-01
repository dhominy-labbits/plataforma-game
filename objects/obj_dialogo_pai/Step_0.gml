/// @description Insert description here

if (mostrando_dialogo == false)
{
	if (dialogo.count() <= 0)
	{
		instance_destroy();
		return;
	}
	
	dialogo_atual = dialogo.pop();
	mostrando_dialogo = true;
} else
{
	if(keyboard_check_released(key_next)
	{
		mostrando_dialogo = false;
		alpha = 0;
	}
}