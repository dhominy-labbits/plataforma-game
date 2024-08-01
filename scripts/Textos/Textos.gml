// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textos(){
	switch npc_nome {
		case "Primeiro Texto":
			ds_grid_add_text("Do you believe in Eorzea?",spr_retrato_teste,0,"Gaius");
			ds_grid_add_text("Eorzea's unity is forged of falsehoods. And its faith is an instrument of deception.",spr_retrato_teste2, 1, "Gaius com ele mesmo");
			ds_grid_add_text("It is naught but a cobweb of lies. To believe in Eorzea is to believe in nothing.", spr_retrato_teste, 0, "Gaius");
			break;
	}
}

function ds_grid_add_row() {
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text() {
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}