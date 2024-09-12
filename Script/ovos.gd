extends Area2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if Globais.segurando:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("reclamando")
	else:
		audio_stream_player.play()
		await get_tree().create_timer(0.5).timeout
		Globais.ovos += 1
		Globais.segurando = true
		
		queue_free()
func ended():
	Dialogic.timeline_ended.disconnect(ended)
	Globais.pause = false
