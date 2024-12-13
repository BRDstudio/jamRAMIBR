extends RigidBody2D
class_name boliña

var saltnum = 0


const JUMP_FORCE = -300  # Vector de fuerza de salto




# Velocidad constante
var constant_speed = 200  # Ajusta el valor de la velocidad

# Dirección de movimiento
var direction = Vector2(1, 0)  # Movimiento hacia la derecha (ajústalo según necesites)




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
		print("rsdsg")
		saltnum = 1
		linear_velocity.y = -500
		$Timer2.start()
