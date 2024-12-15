extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if TranslationServer.get_locale() == "en":
		TranslationServer.set_locale("en")
	if TranslationServer.get_locale() == "es":
		TranslationServer.set_locale("es")
	Global.score = 0
	var high_score:int = Global.save_data.highscore
	$ColorRect3/Label.text = " High Score:" + str(high_score)

func _physics_process(delta):
	$ColorRect2/Button.text = tr("pl")
	$ColorRect2/Button2.text = tr("Op")
	$ColorRect2/Button3.text = tr("Sal")
