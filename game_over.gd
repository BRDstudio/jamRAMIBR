extends Control


func _ready():
	$AudioStreamPlayer3.play()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://mapa.tscn")





func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")








func _on_button_mouse_entered():
	$AudioStreamPlayer.play()

func _on_button_2_mouse_entered():
	$AudioStreamPlayer.play()
