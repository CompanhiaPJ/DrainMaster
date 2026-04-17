extends ColorRect

@onready var label = $"../hidra2/Label"
var rng = RandomNumberGenerator.new()
var valor = 0.5


func _ready():
	rng.randomize()
	
func _on_timer_timeout() -> void:
	if rng.randi_range(1, 10) <= 6:
		valor += 0.01
	else:
		valor = max(0, valor - 0.01)

	label.text = str(valor)
