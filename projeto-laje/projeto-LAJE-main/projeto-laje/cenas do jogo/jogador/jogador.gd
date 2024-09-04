extends CharacterBody2D

var Velocidade_Do_Jogador : float = 400.0
var Direcao_De_Movimento : Vector2 = Vector2(0, 0)

func _ready():
	pass

func _process(delta):
	Movimentar_Jogador()

func Movimentar_Jogador() -> void:
	# Código responsável pela movimentação horizontal do jogador 
	if Input.is_action_pressed("move_para_direita"):
		Direcao_De_Movimento.x = 1
	elif Input.is_action_pressed("move_para_esquerda"):
		Direcao_De_Movimento.x = -1
	else:
		Direcao_De_Movimento.x = 0
	
	# Código responsável pela movimentação vertical do jogador 
	if Input.is_action_pressed("move_para_cima"):
		Direcao_De_Movimento.y = -1
	elif Input.is_action_pressed("move_para_baixo"):
		Direcao_De_Movimento.y = +1
	else:
		Direcao_De_Movimento.y = 0
		
	# Aplica a mudança na direção do jogador 
	velocity = Direcao_De_Movimento.normalized() * Velocidade_Do_Jogador
	move_and_slide()
