extends Area2D
@onready var barco = get_parent()
@onready var node2d = $"../.."

func _ready():
	var mouseposition = get_viewport().get_mouse_position()
	print(mouseposition)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.position.y <= 380:
			barco.seguindo_mouse = false
			node2d.solto()


	
