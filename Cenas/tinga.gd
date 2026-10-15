extends Sprite2D
@onready var shader_material := material as ShaderMaterial


func _on_area_2d_mouse_entered() -> void:
	shader_material.set_shader_parameter("brightness", 1.1)
	scale = Vector2(1.3, 1.3)


func _on_area_2d_mouse_exited() -> void:
	shader_material.set_shader_parameter("brightness", 1.0)
	scale = Vector2(1.0, 1.0)
