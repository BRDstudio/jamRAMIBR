extends Control



func _ready():
	$ColorRect3.visible = false

func _on_button_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_2_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_3_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_button_3_pressed():
	$ColorRect3.visible = true
	$AudioStreamPlayer.play()
