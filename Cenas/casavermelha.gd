extends Sprite2D

@onready var area = $Area2D
@onready var melhoriasmarina = $"../Panel"
var verifi = 1
@onready var shader_material := material as ShaderMaterial


func _ready() -> void:
	area.input_event.connect(_on_area_input_event)


func _on_area_2d_mouse_entered() -> void:
	shader_material.set_shader_parameter("brightness", 1.1)


func _on_area_2d_mouse_exited() -> void:
	shader_material.set_shader_parameter("brightness", 1.0)


func _on_area_input_event(viewport, event, shape_idx) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if verifi == 1:
				melhoriasmarina.visible = true
				verifi = 0
			else:
				melhoriasmarina.visible = false
				verifi = 1
