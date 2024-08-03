/// Create Event
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w,view_h);

/// Create Event
ponto = 0;
ponto_max = 18;
pontobar_h = 100; // Altura máxima da barra
pontobar_w = 15; // Largura da barra
color_1 = c_green;
color_2 = c_black;

// Tocar a música em loop
audio_play_sound(snd_musica_level2, 1, true);