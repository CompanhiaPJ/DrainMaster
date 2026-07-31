extends Node2D

@onready var sprite = $Barco
@onready var dinheiro = get_node("/root/Node2D/Label2")
@onready var caixas = get_node("/root/Node2D/barcoparado/Area2D")
@onready var timer10s = $Timer

var alvo: Node2D = null
var seguindo = false

var capacidade = 10
var estoque = 0
var vender = false

var valorganho = 50
var dentro = false
var soltou = false

var speed = 100
var speedy = 200
var direction = 1

var limite = 150
var inicio_x

func solto():
	caixas.tiracaixa()
	timer10s.start()
	soltou = true

func andar():
	inicio_x = position.x

func definir_alvo(novo_alvo: Node2D):
	alvo = novo_alvo
	seguindo = true

func parar_de_seguir():
	alvo = null
	seguindo = false

func _ready():
	add_to_group("barcos")

func _process(delta):
	if seguindo and alvo != null:

		if global_position.x < alvo.global_position.x - 5:
			global_position.x += speed * delta
			sprite.flip_h = false

		elif global_position.x > alvo.global_position.x + 5:
			global_position.x -= speed * delta
			sprite.flip_h = true

	else:
		if soltou:
			if estoque < capacidade:

				# Queda do barco
				if !dentro:
					position.y += speedy * delta
					speedy += 30

				# Movimento normal quando entra na água
				else:
					position.x += direction * speed * delta

					if position.x > inicio_x + limite:
						direction = -1
						sprite.flip_h = true

					elif position.x < inicio_x - limite:
						direction = 1
						sprite.flip_h = false

func _on_timer_timeout() -> void:
	if estoque < capacidade:
		estoque += 5

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "mar":
		dentro = true

func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.name == "mar":
		dentro = false
