extends Control



func _ready():
	$ColorRect4.visible = false
	$ColorRect3.visible = false
func _physics_process(delta):
	$ColorRect4/Button3.text = tr("Sal")
	$ColorRect3/Button3.text = tr("Sal")
	$Label.text = tr("Op")
	$Button3.text = tr("Lang")
	$Button2.text = tr("Sal")
func _on_button_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_2_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_3_mouse_entered():
	$AudioStreamPlayer.play()


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_button_3_pressed():
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	$ColorRect3.visible = true
	$AudioStreamPlayer.play()


func _on_button_pressed():
	$Button.visible = false
	$Button2.visible = false
	$Button3.visible = false
	$ColorRect4.visible = true
	$AudioStreamPlayer.play()
