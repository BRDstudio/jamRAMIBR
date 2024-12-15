extends ColorRect

func _physics_process(delta):
	$Button3.text = tr("Sal")

func _on_button_pressed():
	TranslationServer.set_locale("en")
	Save.game_data.levels = TranslationServer.get_locale()
	Save.game_data.save()


func _on_button_2_pressed():
	TranslationServer.set_locale("es")
	Save.game_data.levels = TranslationServer.get_locale()
	Save.game_data.save()


func _on_button_3_pressed():
	$".".visible = false
	$"../Button".visible = true
	$"../Button2".visible = true
	$"../Button3".visible = true
