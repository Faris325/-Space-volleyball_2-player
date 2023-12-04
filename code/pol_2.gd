extends Node2D


var point = 0 

@onready var drevo_game = $"..".get_tree() 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
	if body is ball:
		point += 1
		$Label.text = str(point)
		if point == 3:
			get_tree().change_scene_to_file("res://menu.tscn")# закрывет другое дерево 
	
