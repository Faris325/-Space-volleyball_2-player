extends CharacterBody2D

  
const SPEED = 500
const JUMP_VELOCITY = -600.0


@onready var anim = $AnimatedSprite2D # переменная  анимаций 

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta): # глобальный цикл, все что находится в нем,исполняется постоянно.
	
	if not is_on_floor(): # гравитация 
		velocity.y += gravity *delta #velocity.y говорит что тело переместится по y с какой то начальной скоростью 
		
	if Input.is_action_just_pressed("up2") and is_on_floor():  # прыжок
		velocity.y = JUMP_VELOCITY
		anim.play("jump")
	if Input.is_action_just_pressed("down2") and not is_on_floor():
		velocity.y = 600
	if Input.is_action_just_pressed("up2"):
		velocity.y = JUMP_VELOCITY
		anim.play("jump")	

	var direction = Input.get_axis("left2", "right2") # Направление: перемещение  (получает значение 1 0 -1) 
	if direction:
		velocity.x = direction * SPEED  #velocity.x говорит что тело переместится по x с какой то начальной скоростью 
		if velocity.y == 0:
			anim.play("run") 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if velocity.y == 0:
			anim.play("Stay")
	if direction == -1:
		$AnimatedSprite2D.flip_h = true
	elif direction == 1:
		$AnimatedSprite2D.flip_h = false

	move_and_slide()
