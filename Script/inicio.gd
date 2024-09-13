extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Globais.pause = true
	#Dialogic.timeline_ended.connect(ended)
	#Dialogic.start("cena1")
	pass

func ended():
	Dialogic.timeline_ended.disconnect(ended)
	Globais.pause = false
