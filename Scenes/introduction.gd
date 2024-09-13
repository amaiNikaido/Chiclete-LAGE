extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_ended.connect(ended)
	Dialogic.start('cena1') # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func ended():
	Dialogic.timeline_ended.disconnect(ended)
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
