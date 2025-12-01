extends CharacterBody2D
@export var speed = 120
@onready var player = $Sprite2D2/AnimatedSprite2d
var footsteps = preload('res://footsteps.tscn')
var footstep = footsteps.instantiate()
var foot = 'left'
var location = Vector2(0,0)
func feetsteps(direction):
	add_child(footstep)
	location = player.global_position
	if direction == 'left':
		if foot == 'left':
			location.y += 10
			foot = 'right'
		elif foot == 'right':
			location.y -= 10
			foot = 'right'
	elif direction == 'right':
		if foot == 'left':
			location.y 
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
	

	else:
		pass
func _physics_process(delta):
	get_input()
	move_and_slide()
	
