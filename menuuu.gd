extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0
	var high_score:int = Global.save_data.highscore
	$ColorRect3/Label.text = " High Score:" + str(high_score)


