extends CharacterBody2D
var speed = 45


func _physics_process(delta: float) -> void:
	var strafe = Vector2(Input.get_axis('left',"right",),
	Input.get_axis('forward','back'))

	if strafe != Vector2.ZERO:
		velocity = speed * strafe.normalized()
		
	else:
		velocity.x = move_toward(velocity.x,0,speed)
		velocity.y = move_toward(velocity.y,0,speed)
		
	move_and_slide()
	
