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
		
		// Tutorial, primeiro diálogo a ser reproduzido no jogo
		case "dialogo_caramelo_intro":
			ds_grid_add_text("Keko, menina, eu te disse várias vezes pra não esquecer de comprar esses cocos", spr_retrato_caramelo, 1,"Caio Melo");
			ds_grid_add_text("Como vai conseguir a sua energia mágica para expandir sua barraquinha, sem as suas cocadas pra resolver o problema das pessoas?",spr_retrato_caramelo, 1,"Caio Melo");	
			ds_grid_add_text("Ah Caio, deixe de teus migué, minha mãe que falava isso, tu é cachorrão, só fala comigo!",spr_retrato_keko, 0,"Keko");
			ds_grid_add_text("Ainda assim, agora tá ai lascada sem cocos, tudo isso por que não ouviu tua mãe, teu negócio vai pro brejo hein!",spr_retrato_caramelo, 1,"Caio Melo");
			ds_grid_add_text("Ouvi ela na hora certa, Caio, deixe de aperreio. E agora é hora de ir catar coquinhos que nem ela diz!",spr_retrato_keko, 0,"Keko");
			break;
		
		case "dialogo_caramelo_fase_1":
			ds_grid_add_text("Espia só, até que nem demorou muito dona Keko! Tá ficando ligeirinha viu?",spr_retrato_caramelo, 1,"Caio Melo");	
			ds_grid_add_text("E tu vai comer as cocada pra tá com essa pressa toda menino? Te endireite.",spr_retrato_keko, 0,"Keko");
			ds_grid_add_text("É fogo viu? Mas vamo pra casa, e lá me conta mais das fofoca da praia, que se tem um lugar com fofoca é a orla.",spr_retrato_caramelo, 1,"Caio Melo");	
			break;
		
		case "dialogo_caramelo_fase_2":
			ds_grid_add_text("Ai ai, deu trabalho viu? Onde já se viu tanto rato na orla? E aqueles moleques zanzando de skate, tão me achando com cara de ginasta pra ficar pulando deles o tempo todo?", spr_retrato_keko, 0,"Keko");
			ds_grid_add_text("Deixe de tua rabugentisse, Keko.",spr_retrato_caramelo, 1,"Caio Melo");	
			ds_grid_add_text("Ainda bem que dessa vez eram só os cocos!! Imagina se fosse o que torna suas cocadas realmente mágicas",spr_retrato_caramelo, 1,"Caio Melo");
			ds_grid_add_text("Shhh!!! Tá falando demais, vambora que é hora de fazer essa mistura",spr_retrato_keko, 0,"Keko");
			break;
			
		case "dialogo_caramelo_fase_3":
			ds_grid_add_text("Eu sempre acho que faço isso ligeiro, mas sempre saio com uma caimbrã no braço, ai ai ai…", spr_retrato_keko, 0,"Keko");
			ds_grid_add_text("Bom, chega de me endoidar com isso. Agora é hora de fazer algumas pessoinhas felizes!",spr_retrato_keko, 0,"Keko");	
			ds_grid_add_text("Ai, ai, já consigo ver a barraquinha toda prontinha!! Os enfeites, as filas quilométricas…",spr_retrato_keko, 0,"Keko");
			ds_grid_add_text("Vá ficar avoada por ai que não vai ter nem barraca nem nada, se eu fosse teu cliente…",spr_retrato_caramelo, 1,"Caio Melo");
			ds_grid_add_text("Deixe de tua manha menino! Vamo que tá na hora de resolver uns probleminhas!",spr_retrato_keko, 0,"Keko");
			break;
			
		case "tutorial_fase_1":
			ds_grid_add_text("AJUDE KEKO A COLETAR COCOS PARA SUA COCADA MÁGICA! MIRE COM O MOUSE E SE DEFENDA DE RATOS COM BOTÃO ESQUERDO DO MOUSE", spr_retrato_caramelo, 1,"Caio Melo");
			break;
		
		case "tutorial_fase_2":
			ds_grid_add_text("AJUDE KEKO A COZINHAR! ACERTE OS BOTÕES QUANDO OS INGREDIENTES CHEGAREM A ELES PARA PRODUZIR SUAS COCADAS!", spr_retrato_caramelo, 1,"Caio Melo");
			break;
			
		case "tutorial_fase_3":
			ds_grid_add_text("AJUDE KEKO A VENDER AS COCADAS PARA OS CLIENTES CORRETOS. ESCUTE A NECESSIDADE DELES E OFEREÇA O ITEM ADEQUADO!", spr_retrato_caramelo, 1,"Caio Melo");
			break;
			
		case "cliente_fase_3_tristonho":
			ds_grid_add_text("Aiaiai... Eu sinto que ela não gosta mais de mim", spr_retrato_caramelo, 2,"Homem tristonho");
			ds_grid_add_text("Eu acho que deveria oferecer a ele uma...", spr_retrato_keko, 0, "Keko");
				add_op("Cocada da agilidade", "tristonho_resp_errada");
				add_op("Cocada do amor", "tristonho_resp_certa");
				add_op("Cocada da riqueza", "tristonho_resp_errada");
				break;
				
				case "tristonho_resp_certa":
					ds_grid_add_text("Nossa era exatamente isso que eu precisava. Muito obrigado!", spr_retrato_caramelo, 2,"Homem tristonho");
					global.clientes_satisfeitos++;
					break;
				case "tristonho_resp_errada":
					ds_grid_add_text("Eu... Não acho que isso me ajudaria muito. Melhor comprar em outro lugar...", spr_retrato_caramelo, 2,"Homem tristonho");
					break;
					
		case "cliente_fase_3_esportista":
			ds_grid_add_text("Eu sinto ultimamente que não tenho dado meu melhor desempenho...", spr_retrato_caramelo, 2,"Esportista Desanimado");
			ds_grid_add_text("Eu acho que deveria oferecer a ele uma...", spr_retrato_keko, 0, "Keko");
				add_op("Cocada da vitalidade", "esportista_resp_certa");
				add_op("Cocada do riso", "esportista_resp_errada");
				add_op("Cocada da beleza", "esportista_resp_errada");
				break;
				
				case "esportista_resp_certa":
					ds_grid_add_text("Eu não me sentia assim há anos! Muito obrigado!", spr_retrato_caramelo, 2,"Esportista Desanimado");
					global.clientes_satisfeitos++;
					break;
				case "esportista_resp_errada":
					ds_grid_add_text("Eu não acho que isso vai melhorar meus resultado Desculpe, mas parece que você não tem o que eu preciso", spr_retrato_caramelo, 2,"Esportista Desanimado");
					break;
					
		case "cliente_fase_3_artista":
			ds_grid_add_text("Eu me sinto sem ideias... Sem nada... Acho que o que eu faço não é bom o suficiente", spr_retrato_caramelo, 2,"Artista Cansado");
			ds_grid_add_text("Eu acho que deveria oferecer a ele uma...", spr_retrato_keko, 0, "Keko");
				add_op("Cocada da agilidade", "artista_resp_errada");
				add_op("Cocada da criatividade", "artista_resp_certa");
				add_op("Cocada da exposição", "artista_resp_muito_errada");
				break;
				
				case "artista_resp_certa":
					ds_grid_add_text("Nossa! Só o cheirinho dessa cocada já me trouxe a ideia que eu preisava! Brigada demais moça!", spr_retrato_caramelo, 2,"Artista Cansado");
					global.clientes_satisfeitos++;
					break;
				case "artista_resp_errada":
					ds_grid_add_text("Ai não moça... Eu vou continuar tão perdida quanto. Talvez em outro lugar eu encontre uma ajuda.", spr_retrato_caramelo, 2,"Artista Cansado");
					break;
				case "artista_resp_muito_errada":
					ds_grid_add_text("...", spr_retrato_caramelo, 2,"Artista Cansado");
					ds_grid_add_text("...", spr_retrato_caramelo, 2,"Artista Cansado");
					ds_grid_add_text("É sério?", spr_retrato_caramelo, 2,"Artista Cansado");
					break;
					
		case "cliente_fase_3_timida":
			ds_grid_add_text("Eu não me acho bonita... Sabe, acho que nada fica bem em mim.", spr_retrato_caramelo, 2,"Moça Tímida");
			ds_grid_add_text("Eu acho que deveria oferecer a ela uma...", spr_retrato_keko, 0, "Keko");
				add_op("Cocada da riqueza", "timida_resp_errada");
				add_op("Cocada do riso", "timida_resp_errada");
				add_op("Cocada da autoestima", "timida_resp_certa");
				break;
				
				case "timida_resp_certa":
					ds_grid_add_text("Meu Deus! Como eu pude não enxergar isso em mim? Eu ganhei o dia hoje com essa cocada, Muito obrigado!", spr_retrato_caramelo, 2,"Moça Tímida");
					global.clientes_satisfeitos++;
					break;
				case "timida_resp_errada":
					ds_grid_add_text("Não adianta. Mesmo com essa cocada eu continuo terrível...", spr_retrato_caramelo, 2,"Moça Tímida");
					break;
					
		case "pontuacao_final_falha": 
			ds_grid_add_text("Parece que a Keko não conseguiu atender às expectativas de todos os seus clientes.", spr_retrato_caramelo, 1,"Caio Melo");
			ds_grid_add_text("Preste mais atenção nas necessidades deles e tente novamente!", spr_retrato_caramelo, 1,"Caio Melo");
			break;
			
		case "pontuacao_final_sucesso": 
			ds_grid_add_text("Parabéns! Você prestou atenção nas expectativas dos clientes e as vendas foram um sucesso", spr_retrato_caramelo, 1,"Caio Melo");
			global.venceu_jogo = true;
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