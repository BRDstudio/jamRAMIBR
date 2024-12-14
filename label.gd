extends Camera2D

# Variable para el puntaje
var score: int = 0

# Referencia al Label
@onready var score_label: Label = $"."

func _ready():
	# Configurar el texto inicial del Label
	score_label.text = "Score: " + str(score)

	# Opcional: iniciar un Timer para incrementar el score automáticamente cada segundo
	var timer = Timer.new()
	timer.wait_time = 1.0
	timer.autostart = true
	timer.one_shot = false
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))
	add_child(timer)

func _on_timer_timeout():
	# Incrementar el puntaje y actualizar el texto
	score += 1
	score_label.text = "Score: " + str(score)
