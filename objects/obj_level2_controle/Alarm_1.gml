/// @description A
// Criar uma instância de obj_ini_w

instance_create_layer(192, 0, "Instances", obj_ini_a);

// Redefinir o alarme com um tempo randomizado
alarm[1] = irandom_range(tempo_min, tempo_max);
