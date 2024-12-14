extends RigidBody2D
class_name boliña

var saltnum = 0


const JUMP_FORCE = -300  # Vector de fuerza de salto




# Velocidad constante
var constant_speed = 200  # Ajusta el valor de la velocidad

# Dirección de movimiento
var direction = Vector2(1, 0)  # Movimiento hacia la derecha (ajústalo según necesites)

func _ready():
	get_tree().paused = false
	$"../Node2D2".visible = false

func _on_body_entered(body):
	linear_velocity = direction.normalized() * constant_speed
	if body is rampiña:
		saltnum = 0  # Reiniciar la posibilidad de saltar



func _physics_process(delta):
	linear_velocity.x = 400

	if Input.is_action_just_pressed("ui_accept") and saltnum == 0:
		$"../AudioStreamPlayer2".play()
		saltnum = 1  # Evitar múltiples saltos"
		
		linear_velocity.y = -500
		$Timer2.start()


func _on_body_exited(body):
	if body is rampiña:
		saltnum = 1
	


func _on_timer_2_timeout():
	saltnum = 0
	linear_velocity.y = 0




func _on_area_2d_area_entered(area):
	if area is resrt:
		saltnum = 1
		linear_velocity.y = -500
		$Timer2.start()
	if area is rochiña:
		saltnum = 1
		linear_velocity.y = -500
		$Timer2.start()
	if area is troncmiguel:
		saltnum = 1
		linear_velocity.y = -500
		$Timer2.start()
	if area is tituareas:
		get_tree().paused = true
		$"../Node2D2".visible = true
		$"../Node2D2/AnimationPlayer".play("new_animation")
		$"../GPUParticles2D".emitting = false
		$"../GPUParticles2D".visible = false
	if area is enemtut:
		get_tree().paused = true
		$"../Node2D3".visible = true
		$"../Node2D3/AnimationPlayer".play("new_animation")
		$"../GPUParticles2D".visible = false

func _on_area_2d_2_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_button_pressed():
	$"../GPUParticles2D".emitting = true
	$"../Node2D2".visible = false
	$"../GPUParticles2D".visible = true
	get_tree().paused = false
