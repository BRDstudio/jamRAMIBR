extends Area2D

class_name enemtut

func _physics_process(delta):
	if TranslationServer.get_locale() == "en":
		$"../Label".visible = true
		$"../../Node2D2/Label".visible = true
		$"../../Node2D2/Label2".visible = false
		$"../Label2".visible = false
	if TranslationServer.get_locale() == "es":
		$"../Label2".visible = true
		$"../../Node2D2/Label2".visible = true
		$"../../Node2D2/Label".visible = false
		$"../Label".visible = false
