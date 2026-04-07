extends Label

func cor():
	modulate = Color(1, 0, 0)
	await get_tree().create_timer(0.5).timeout
	modulate = Color(1, 1, 1)
