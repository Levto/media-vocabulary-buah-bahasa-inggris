extends TextureButton

export var  targetSceneName = ""

func _ready():
	pass

func _on_Back_button_down():
	get_tree().change_scene("res://displayScenes/" +targetSceneName + ".tscn")
