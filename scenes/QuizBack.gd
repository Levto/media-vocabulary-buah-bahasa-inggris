extends TextureButton

var overlay = load("res://scenes/QuizBackOverlay.tscn")

func _ready():
	pass


func _on_QuizBack_button_down():
	var overlayNode = overlay.instance()
	get_parent().add_child(overlayNode)
