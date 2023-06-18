extends Control

onready var audio = $AudioStreamPlayer

func _ready():
	if audio.playing != globalVariables.bgmPlaying:
		if globalVariables.bgmPlaying == true:
			audio.play(globalVariables.bgmPlayback)
			self.texture_normal = load("res://sprites/buttons/Audio_on.png")
		else:
			audio.stop()
			self.texture_normal = load("res://sprites/buttons/Audio_mute.png")

func _process(delta):
	if audio.playing != globalVariables.bgmPlaying:
		if globalVariables.bgmPlaying == true:
			audio.play(globalVariables.bgmPlayback)
		else:
			audio.stop()
	if audio.playing:
		self.texture_normal = load("res://sprites/buttons/Audio_on.png")
	else:
		self.texture_normal = load("res://sprites/buttons/Audio_mute.png")


func _exit_tree():
	globalVariables.bgmPlayback = audio.get_playback_position()

func _on_MusicPlayer_button_down():
	if globalVariables.bgmPlaying == true:
		globalVariables.bgmPlaying = false
		globalVariables.bgmPlayback = audio.get_playback_position()
		audio.stop()
	else:
		globalVariables.bgmPlaying = true
		audio.play(globalVariables.bgmPlayback)
