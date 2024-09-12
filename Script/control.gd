extends Control
@onready var contador_ovos: Label = $MarginContainer/ovos_container/contador_ovos as Label
@onready var ovo: TextureRect = $MarginContainer/ovos_container/gema as TextureRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contador_ovos.text = str(Globais.ovos)
	if Globais.segurando:
		ovo.texture = load("res://Assets/sprites/gemas/Gemas (4).png")
	else:
		ovo.texture = load("res://Assets/sprites/gemas/Gemas (5).png")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	contador_ovos.text = str(Globais.ovos)
	if Globais.segurando:
		ovo.texture = load("res://Assets/sprites/gemas/Gemas (4).png")
	else:
		ovo.texture = load("res://Assets/sprites/gemas/Gemas (5).png")
