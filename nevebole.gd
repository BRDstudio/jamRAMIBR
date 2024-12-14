extends Area2D

class_name nevebvoleeeee

func _ready():
	$"A-retro-styled-pixel-art-illustration-of-a-mini-snowball-free-png".visible = true
	$CollisionShape2D.disabled = false
	$Collected.visible = false

func _on_area_entered(area):
	if area is bolearea:
		$"A-retro-styled-pixel-art-illustration-of-a-mini-snowball-free-png".visible = false
		$CollisionShape2D.disabled = true
		$Collected.visible = true
		$AnimationPlayer.play("new_animation")
		$AudioStreamPlayer.play()
