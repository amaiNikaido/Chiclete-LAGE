extends Control
@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer
@onready var button: Button = $Button
@onready var audio: AudioStreamPlayer = $AudioStreamPlayer
var videoLength = 3.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(videoLength)
	audio.play(4.0)
	video_stream_player.play()

func _process(delta):
	if video_stream_player.stream_position >= (videoLength - 0.5):
		video_stream_player.set_paused(true)

func _on_button_pressed() -> void:
	get_tree().quit()
