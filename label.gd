extends Label

var speed = 0.05

func _ready():
	visible_characters = 0
	reveal_text()

func reveal_text():
	while visible_characters < text.length():
		await get_tree().create_timer(speed).timeout
		visible_characters += 1
