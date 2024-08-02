// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textos(){
	switch npc_nome {
		//Nome do NPC que fará o diálogo
		case "Primeiro Texto":
			ds_grid_add_text("Do you believe in Eorzea?",spr_retrato_keko,0,"Gaius");
			ds_grid_add_text("Eorzea's unity is forged of falsehoods. And its faith is an instrument of deception.",spr_retrato_caramelo, 1, "Gaius com ele mesmo");
			ds_grid_add_text("It is naught but a cobweb of lies. To believe in Eorzea is to believe in nothing.", spr_retrato_keko, 0, "Gaius");
				add_op("Screw you Gaius", "Resposta 1");
				add_op("Eorzia is doomed", "Resposta 2");
				add_op("Terceira Opção", "Resposta 3");
		break;
			//Caso escolha a primeira resposta
			case "Resposta 1":
				ds_grid_add_text("You fool!", spr_retrato_keko, 0, "Gaius");
			break;
			case "Resposta 2":
				ds_grid_add_text("I knew you'd agrre with me", spr_retrato_keko, 0, "Gaius");				
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

//Adiciona as opções
function add_op(_texto, _resposta) {
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}