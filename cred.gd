extends Control

func _physics_process(delta):
	$Button2.text = tr("Sal")

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_button_2_mouse_entered():
	$AudioStreamPlayer.play()
