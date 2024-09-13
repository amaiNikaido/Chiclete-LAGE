extends Area2D
@onready var spriteAlien = $Sprite2D
@onready var musica = $"../musica/AudioStreamPlayerMusica"

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "change":
		musica.stop()
		spriteAlien.texture = load("res://Assets/sprites/Personagens/Pai/Untitled_Artwork.png")
		spriteAlien.scale = Vector2(1.01, 1.01)

func action():
	if Globais.ovos == 0 && Globais.dialogo_1:
		Globais.dialogo_1 = false
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("cena2")
		Globais.segurando = false
	elif Globais.ovos == 0:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("dica")
	
	if Globais.ovos == 1 && Globais.dialogo2 :
		Globais.dialogo2 = false
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("cena3_1")
		Globais.segurando = false
	elif Globais.ovos == 1:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("dica2")
	
	if Globais.ovos == 2 && Globais.dialogo3:
		Globais.dialogo3 = false
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("cena3")
		Globais.segurando = false
	elif Globais.ovos == 2:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("dica1")
	
	if Globais.ovos == 3:
		Globais.pause = true
		Dialogic.timeline_ended.connect(fim)
		Dialogic.start("cena4")
		
		
func ended():
	Dialogic.timeline_ended.disconnect(ended)
	Globais.pause = false

func fim():
	Dialogic.timeline_ended.disconnect(fim)
	get_tree().change_scene_to_file("res://Scenes/fim.tscn")
