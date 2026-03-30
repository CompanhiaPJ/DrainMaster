extends Sprite2D

var seguindo_mouse = true

func _process(delta):
	if seguindo_mouse:
		global_position = get_global_mouse_position()
