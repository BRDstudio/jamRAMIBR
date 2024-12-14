extends Area2D

func _ready() -> void:
	self.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body is RigidBody2D:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
