extends Control
@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer
@onready var button: Button = $Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	video_stream_player.play()



func _on_button_pressed() -> void:
	get_tree().quit()
