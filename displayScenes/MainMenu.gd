extends Control


func _ready():
	if globalVariables.mainMenuOverlay == 1:
		$AnimatedSprite.playing = true
	else:
		$AnimatedSprite.visible = false
		$AnimatedSprite.queue_free()

func _process(delta):
	
	#Check if user has completed achievement 1 (read all vocabulary) or not to unlock quiz
	if globalVariables.achievement1 == 0:
		$VBoxContainer/HBoxContainer2/Exercise.disabled = true
	else:
		$VBoxContainer/HBoxContainer2/Exercise.disabled = false

func _on_Start_button_down():
	get_tree().change_scene("res://displayScenes/AZMenu.tscn")
	
func _on_Exercise_button_down():
	get_tree().change_scene("res://displayScenes/QuizMenu.tscn")

func _on_Help_button_down():
	get_tree().change_scene("res://displayScenes/Help.tscn")

func _on_About_button_down():
	get_tree().change_scene("res://displayScenes/About.tscn")


func _on_AnimatedSprite_animation_finished():
	globalVariables.mainMenuOverlay = 0
	$AnimatedSprite.queue_free()


func _on_Achievement_button_down():
	get_tree().change_scene("res://displayScenes/AchievementDisplay.tscn")
