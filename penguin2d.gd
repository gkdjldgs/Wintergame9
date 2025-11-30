extends CharacterBody2D
@export var speed = 120
@onready var player = $Sprite2D2/AnimatedSprite2d
var fishing = false
func get_input():
	var input_direction = Input.get_vector("left", "right", "forward", "back")
	velocity = input_direction * speed

	if Input.is_action_pressed('left'):
		player.play('left')
	elif Input.is_action_pressed("right"):
		player.play("right")
	elif Input.is_action_pressed("forward"):
		player.play("backwards")
	elif Input.is_action_pressed('back'):
		player.play("forward")
	elif Input.is_action_pressed("click"):
		$Sprite2D2.play('gif')
		while $Sprite2D2.frame == 19:
			$Sprite2D2.stop

	else:
		pass
func _physics_process(delta):
	get_input()
	move_and_slide()
	
