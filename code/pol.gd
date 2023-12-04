extends Node2D

class_name pol 


var point = 0 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body is ball:
		point += 1
		$Label.text = str(point)
		if point == 3:
			var drevo_game = ($"..").get_tree() 
			get_tree().change_scene_to_file("res://menu.tscn") # закрывет другое дерево 
		
