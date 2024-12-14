extends Node2D

class_name Score  # Define un nombre de clase global (opcional).

 # Puntaje inicial.
var time_accumulated: float = 0.0  # Acumulador de tiempo.

# Referencias a nodos
@onready var score_label: Label = $Label
@onready var camera: Camera2D = $RigidBody2D/Camera2D

func _ready():
	# Configuramos el texto inicial del Label
	score_label.text = "Score: " + str(Global.score)
	
	# Activamos el procesamiento para actualizar la posición del Label
	set_process(true)

func _process(delta: float):
	# Acumulamos el tiempo
	time_accumulated += delta
	
	# Si ha pasado 1 segundo, incrementamos el score y actualizamos el texto
	if time_accumulated >= 1.0:
		time_accumulated = 0.0  # Reiniciamos el contador
		Global.score += 10  # Incrementamos el puntaje
		score_label.text = "Score: " + str(Global.score)  # Actualizamos el texto del Label
	
	# Ajusta la posición del Label a la esquina de la cámara
	score_label.position = camera.global_position - camera.offset + Vector2(600, -490)
