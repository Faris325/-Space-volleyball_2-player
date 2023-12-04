extends ParallaxBackground

var speed = 30

func _process(delta): # глобальный цикл, все что находится в нем,исполняется постоянно.
	scroll_offset.x -= speed * delta  # прокрутка сцеы по x
