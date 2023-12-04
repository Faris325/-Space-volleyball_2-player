extends CharacterBody2D

class_name ball

@export var initial_ball_speed = 20

var ball_speed = initial_ball_speed 

func _ready():
	start_ball()
	
func _physics_process(delta):
	var collision = move_and_collide(velocity* ball_speed * delta)
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal())
		var speed_ball2 = velocity 
		

	
func start_ball():
	randomize()
	velocity.x = [-1,1] [randi()%2]	* initial_ball_speed
	velocity.y = [-.8,.8] [randi()%2]	* initial_ball_speed
	




