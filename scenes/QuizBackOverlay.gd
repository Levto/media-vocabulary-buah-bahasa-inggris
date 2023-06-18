extends ColorRect


func _ready():
	globalVariables.isPaused = true


func _on_Yes_button_down():
	get_tree().change_scene("res://displayScenes/QuizMenu.tscn")
	globalVariables.rightAnswer = 0
	globalVariables.wrongAnswer = 0
	globalVariables.secondTaken = 0
	globalVariables.minuteTaken = 0

func _on_No_button_down():
	globalVariables.isPaused = false
	queue_free()
