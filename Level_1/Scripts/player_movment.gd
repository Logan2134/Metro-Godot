extends CharacterBody2D

const max_speed = 400
const acel = 1500
const friction = 500

var input = Vector2.ZERO
var gravity = 25
var jumpSpeed = -400
var current_dir = "none"

func _physics_process(delta):
	player_movement(delta)
	

func get_input():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	
	return input.normalized()
	
func player_movement(delta):
	input = get_input()
	
	
	velocity.y = velocity.y + gravity
	if int(Input.is_action_just_pressed("ui_up")):
		velocity.y = jumpSpeed
	elif int(Input.is_action_pressed("ui_select")):
		current_dir = "right"
#		play_anim(1)
		
	
	if input == Vector2.ZERO:
		if velocity.length() > (friction*delta):
			velocity -= velocity.normalized() * (friction * delta)
		else:
			velocity = Vector2.ZERO
	else:
#		play_anim(0)
		velocity +=(input * acel * delta)
		velocity = velocity.limit_length(max_speed)
		
	move_and_slide()

#func play_anim(movement):
	
#	var dir = current_dir
#	var anim = $AnimatedSprite2D
#	if dir == "right":
#		anim.flip_h = false
		
#		if movement == 1:
#			anim.play("Hit")
#		elif movement == 0:
#			anim.play("idle")

		
