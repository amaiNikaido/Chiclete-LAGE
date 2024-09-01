extends Control
@onready var contador_ovos: Label = $MarginContainer/ovos_container/contador_ovos as Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contador_ovos.text = str(Globais.ovos)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	contador_ovos.text = str(Globais.ovos)
