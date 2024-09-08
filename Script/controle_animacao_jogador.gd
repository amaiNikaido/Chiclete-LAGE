extends AnimatedSprite2D

class_name AnimacaoControle

const MOVER_PARADO = {
	"andando_cima": "parado_cima",
	"andando_baixo": "parado_baixo",
	"andando_direita": "parado_direita",
	"andando_esquerda": "parado_esquerda"
}

func play_animacao_movimento (velocity: Vector2):
	if velocity.x > 0:
		play("andando_direita")
	elif velocity.x < 0:
		play("andando_esquerda")
	
	if velocity.y > 0:
		play("andando_baixo")
	elif velocity.y < 0:
		play("andando_cima")

func play_animacao_parado ():
	if MOVER_PARADO.keys().has(animation):
		play(MOVER_PARADO[animation])
