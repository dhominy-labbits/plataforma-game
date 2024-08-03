/// @description Tempo para esperar até poder iniciar novo diálogo
global.dialogo = false;

switch npc_nome {
	
	case "dialogo_caramelo_intro":
		room_goto(Room1);
		show_debug_message("Mandou pra primeira fase");
		break;
		
	default:
		break;
		
}

// Destrói o Diálogo
instance_destroy();