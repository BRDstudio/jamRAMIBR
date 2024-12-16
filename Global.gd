extends Node
var score = 0
var levado = 0
var first : bool = true
var save_data:SaveData

func _ready():
	save_data = SaveData.load_or_create()
