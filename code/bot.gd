extends CharacterBody2D


const SPEED = 400
const JUMP_VELOCITY = -400.0

var chase = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if not is_on_floor(): # гравитация 
		velocity.y += gravity *delta
	var ball2 = $"../ball"
	var direction = (ball2.position - self.position).normalized()
	if  chase == true:
		velocity.x = direction.x * SPEED
	


	move_and_slide()

func _on_area_2d_body_entered(body):
	if body is ball:
		chase = true
