extends CollisionShape2D

# Variables para el contador y el tamaño
var contador: int = 10
var tamaño_inicial: Vector2
var decrecimiento: float = 0.01
var tiempo: float = 0.0

func _ready():
	$"../../Node2D3".visible = false
	# Guardar el tamaño inicial del CollisionShape2D
	tamaño_inicial = scale




func _process(delta):
	# Actualizar el contador
	if contador > 0:
		tiempo += delta
		if tiempo >= 1.0:  # Cada segundo
			contador -= 1
			tiempo = 0.0
			# Actualizar el tamaño del CollisionShape2D
			update_size()

func update_size():
	# Hacer que el CollisionShape2D se haga más pequeño
	scale = tamaño_inicial * (contador / 10.0)  # Ajusta el divisor según el valor máximo del contador
	if scale < Vector2(0.1, 0.1):
		get_tree().change_scene_to_file("res://game_over.tscn")
		
		Global.score = 0
		

func _on_area_2d_area_entered(area):
	if area is nevebvoleeeee:
		contador += 1
		update_size()
	if area is rochiña:
		contador -= 1
		update_size()
	if area is troncmiguel:
		contador -= 1
		update_size()


func _on_button_pressed():
	$"../../Node2D3".visible = false
	get_tree().paused = false
	$"../../GPUParticles2D".visible = true
	
