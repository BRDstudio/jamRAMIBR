extends Area2D

class_name resrt

func _on_body_entered(body):
	if body is boliña:
		$AnimationPlayer.play("new_animation")
		$AudioStreamPlayer.play()
