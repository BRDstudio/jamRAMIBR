extends VideoStreamPlayer

func _ready():
	$"../AnimationPlayer".play("new_animation")
func _on_finished():
	$".".play()


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "new_animation":
		$"../AnimationPlayer".play("new_animation")


func _on_button_mouse_entered():
	$"../ColorRect2/AudioStreamPlayer".play()


func _on_button_pressed():
	get_tree().change_scene_to_file("res://mapa.tscn")


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	get_tree().quit()





func _on_button_2_mouse_entered():
	$"../ColorRect2/AudioStreamPlayer".play()


func _on_button_3_mouse_entered():
	$"../ColorRect2/AudioStreamPlayer".play()
