extends Node2D

@onready var sprite = $Barco

var speed = 100
var direction = 1
var limite = 150
var inicio_x

func andar():
	inicio_x = position.x

func _process(delta):
	position.x += direction * speed * delta

	if position.x > inicio_x + limite:
		direction = -1
		sprite.flip_h = true

	elif position.x < inicio_x - limite:
		direction = 1
		sprite.flip_h = false
