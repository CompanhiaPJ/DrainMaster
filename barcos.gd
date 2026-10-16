extends Node2D

@onready var sprite = $Barco
@onready var funcdinheiro = get_node("/root/Node2D/Label2")
@onready var dinheiro = get_node("/root/Node2D/Label2")
@onready var caixas = get_node("/root/Node2D/barcoparado/Area2D")
@onready var timer10s = $Timer
var positionbarcox = 0
var vendeu = false
var voltando = false
var farmando = false

var alvo: Node2D = null

var seguindo = false
var parado_no_alvo = false

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
var inicio_x = 0


func _ready():
	add_to_group("barcos")


func solto():
	caixas.tiracaixa()
	timer10s.start()
	soltou = true
	andar()


func andar():
	positionbarcox = position.x
	inicio_x = position.x


func definir_alvo(novo_alvo: Node2D):
	alvo = novo_alvo
	seguindo = true
	parado_no_alvo = false


func parar_de_seguir():
	alvo = null
	seguindo = false


func seguir_alvo(delta):
	farmando = false
	if vendeu == true:
		return
	
	if alvo == null:
		return

	if global_position.x < alvo.global_position.x:
		global_position.x += speed * delta
		sprite.flip_h = false

	elif global_position.x > alvo.global_position.x:
		global_position.x -= speed * delta
		sprite.flip_h = true


func chegou_no_destino():
	print("Chegou!")
	seguindo = false
	parado_no_alvo = true
	vendendo()

func vendendo():
	farmando = false
	if estoque > 0:
		funcdinheiro.ganhar(estoque * (40*0.5))
		funcdinheiro.texto1(estoque)
		estoque = 0
		vendeu = true

func voltar_andar():
	parado_no_alvo = false


func voltar(delta):
	farmando = false
	if position.x < positionbarcox:
		position.x = min(position.x + speed * delta, positionbarcox)
		sprite.flip_h = false

	elif position.x > positionbarcox:
		position.x = max(position.x - speed * delta, positionbarcox)
		sprite.flip_h = true

	if position.x == positionbarcox:
		vendeu = false
		voltando = false
		parado_no_alvo = false
		seguindo = false
		alvo = null
		direction = 1
		inicio_x = position.x

func movimento_normal(delta):
	if parado_no_alvo:
		return

	if !dentro:
		position.y += speedy * delta
		speedy += 30

	else:
		farmando = true
		position.x += direction * speed * delta

		if position.x > inicio_x + limite:
			direction = -1
			sprite.flip_h = true

		elif position.x < inicio_x - limite:
			direction = 1
			sprite.flip_h = false


func _process(delta):
	if seguindo and alvo != null:
		seguir_alvo(delta)

	elif voltando:
		voltar(delta)

	elif soltou and estoque < capacidade:
		movimento_normal(delta)


func _on_timer_timeout() -> void:
	if farmando == true:
		if estoque < capacidade:
			estoque += 5


func _on_area_2d_area_entered(area: Area2D) -> void:

	if area.name == "mar":
		dentro = true
	
	if seguindo == true:
		if area.name == "AREA":
			print("entrou")
			chegou_no_destino()


func _on_area_2d_area_exited(area: Area2D) -> void:

	if area.name == "mar":
		dentro = false
