/// @description Aplica colisão e movimentação ao jogador



// Fazendo a colisão horizontal
// Checando se eu estou colidindo com a parede
var _col	= instance_place(x + velh, y, obj_chao);
// Se colidir, eu devo "grudar" em quem colidiu
if(_col)
{
	// Checando se estou indo para direita
	if (velh > 0)
	{
		// "Grudando" na partes esquerda da parede
		x = _col.bbox_left + (x - bbox_right);
	}
	
	// Checando se estou indo para direita
	if (velh < 0)
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	
	// Uma vez colidido, o player deve parar
	velh = 0;
}


x += velh;

var _col	= instance_place(x, y + velv, obj_chao)
if (_col)
{
	if (velv > 0)
	{
		// Indo para baixo
		y = _col.bbox_top + (y - bbox_bottom);
	}
	if (velv < 0)
	{
		// Indo para cima
		y = _col.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

y += velv;