/// Create Event

// Definir intervalo mínimo e máximo em frames (por exemplo, de 1 a 3 segundos)
tempo_min = 90; // 1 segundo (30 frames)
tempo_max = 380; // 6 segundos (90 frames)

// Iniciar o alarme com um tempo randomizado
alarm[0] = irandom_range(tempo_min, tempo_max);
alarm[1] = irandom_range(tempo_min, tempo_max);
alarm[2] = irandom_range(tempo_min, tempo_max);
