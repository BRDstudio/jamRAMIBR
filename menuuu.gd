extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Save.game_data.idiom == 0:
		TranslationServer.set_locale("en")
	if Save.game_data.idiom == 1:
		TranslationServer.set_locale("es")
	Global.score = 0
	var high_score:int = Global.save_data.highscore
	$ColorRect3/Label.text = " High Score:" + str(high_score)

func _physics_process(delta):
	$ColorRect2/Button.text = tr("pl")
	$ColorRect2/Button2.text = tr("Op")
	$ColorRect2/Button3.text = tr("Sal")


func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://cred.tscn")
