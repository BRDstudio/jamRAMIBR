extends Control


func _ready():
	if TranslationServer.get_locale() == "en":
		$Button3.visible = false
		$Button2.visible = true
	if TranslationServer.get_locale() == "es":
		$Button2.visible = false
		$Button3.visible = true
	$AudioStreamPlayer3.play()
	$Label2.text = "Final Score:" + str(Global.score)
	if Global.score > Global.save_data.highscore:
		Global.save_data.highscore = Global.score
		Global.save_data.save()
func _physics_process(delta):
	$Button.text = tr("PA")
	$Label.text = tr("GO")

func _on_button_pressed():
	Global.score = 0
	get_tree().change_scene_to_file("res://mapa.tscn")

func _on_button_2_pressed():
	Global.score = 0
	get_tree().change_scene_to_file("res://node_2d.tscn")




func _on_button_mouse_entered():
	$AudioStreamPlayer.play()

func _on_button_2_mouse_entered():
	$AudioStreamPlayer.play()

func _on_button_3_mouse_entered() -> void:
	pass 
