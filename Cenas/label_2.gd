extends Label

@onready var time = $"../../tempo"

var numero := 1

func _ready():
	time.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	numero += 1
	text = str(numero).pad_zeros(2)
