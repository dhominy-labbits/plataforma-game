/// @description Insert description here
if inicializar == false {
	scr_textos();
	inicializar = true;
}

if keyboard_check_pressed(ord("F")) {
	if pagina < array_length(texto) - 1 {
		pagina++;
	} else {
		alarm_set(0,3);
	}
}