extends Node2D

@onready var sprite = $Barco
@onready var dinheiro = get_node("/root/Node2D/Label2")

var valorganho = 50
var dentro = false
var soltou = false

var speed = 100
var speedy = 200
var direction = 1  # X

var limite = 150
var inicio_x

func solto():
	soltou = true

func andar():
	inicio_x = position.x

func _process(delta):
	if soltou == true:
		if dentro == false:
			position.y += speedy * delta
			speedy = speedy + 30
		else:
			position.x += direction * speed * delta

			if position.x > inicio_x + limite:
				direction = -1
				sprite.flip_h = true

			elif position.x < inicio_x - limite:
				direction = 1
				sprite.flip_h = false


func _on_timer_timeout() -> void:
	dinheiro.ganhar(valorganho)


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "mar":
		dentro = true
