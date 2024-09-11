extends CharacterBody2D

class_name Jogador

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 40000.0



func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("esquerda","direita", "cima", "baixo")
	
	if direction:
		velocity = direction * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * delta)
		velocity.y = move_toward(velocity.y, 0, SPEED * delta)
	
	if velocity != Vector2.ZERO:
		animated_sprite_2d.play_animacao_movimento(velocity)
	else:
		animated_sprite_2d.play_animacao_parado()
	
	move_and_slide()
