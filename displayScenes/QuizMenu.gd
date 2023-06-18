extends Control


func _ready():
	pass

func _process(delta):
	globalVariables.quizArray = mainDictionary.randomizeArray()


func _on_QuizA_button_down():
	globalVariables.quizType = "QuizA"
	get_tree().change_scene("res://displayScenes/QuizTutorial.tscn")


func _on_QuizB_button_down():
	globalVariables.quizType = "QuizB"
	get_tree().change_scene("res://displayScenes/QuizTutorial.tscn")


func _on_QuizC_button_down():
	pass # Replace with function body.
