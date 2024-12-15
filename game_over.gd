extends Control


func _ready():
	$AudioStreamPlayer3.play()
	$Label2.text = "Final Score:" + str(Global.score)
	if Global.score > Global.save_data.highscore:
		Global.save_data.highscore = Global.score
		Global.save_data.save()


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
