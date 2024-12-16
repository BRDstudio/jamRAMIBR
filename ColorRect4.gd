extends ColorRect



func _on_button_3_pressed():
	$".".visible = false
	$"../Button".visible = true
	$"../Button2".visible = true
	$"../Button3".visible = true

func _on_h_slider_value_changed(value):
	# Normaliza el valor del Slider (entre 0 y 1) al rango de volumen que desees
	# Por ejemplo, si tu volumen va de 0 a -80 dB (silencio a volumen máximo):
	var volumen_db = value * 1
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("sfx"), volumen_db)


func _on_h_slider_2_value_changed(value):
	# Normaliza el valor del Slider (entre 0 y 1) al rango de volumen que desees
	# Por ejemplo, si tu volumen va de 0 a -80 dB (silencio a volumen máximo):
	var volumen_db = value * 1
	# Define el nombre de tu bus de sonido (reemplaza "MiBusDeSonido" con el nombre correcto)
	# Establece el volumen del bus de sonido usando la función set_bus_volume_db
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("music"), volumen_db)
