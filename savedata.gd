extends Resource
class_name SaveData

@export var highscore : int = 0
const SAVE_PATH:String = "user://save_data.tres"
func save() -> void:
	ResourceSaver.save(self, SAVE_PATH)
static func load_or_create() -> SaveData:
	var res:SaveData
	if FileAccess.file_exists(SAVE_PATH):
		res = load(SAVE_PATH) as SaveData
	else:
		Save.game_data.idiom = 0
		Save.save_data()
		res = SaveData.new()
	return res