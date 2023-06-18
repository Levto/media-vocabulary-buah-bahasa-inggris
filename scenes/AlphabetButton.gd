extends TextureButton

export (int) var  alphabet = 0

func _ready():
	pass
	
func _on_A_button_down():
	globalVariables.selectedLetter = alphabet
	get_tree().change_scene("res://displayScenes/Vocabulary.tscn")

