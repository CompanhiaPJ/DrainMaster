extends Sprite2D

@onready var shader_material := material as ShaderMaterial


func _on_area_2d_mouse_entered() -> void:
	shader_material.set_shader_parameter("brightness", 1.1)


func _on_area_2d_mouse_exited() -> void:
	shader_material.set_shader_parameter("brightness", 1.0)
