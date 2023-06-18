extends Control


func _ready():
	globalVariables.loadProgress()


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "SplashScreen":
		get_tree().change_scene("res://displayScenes/MainMenu.tscn")
