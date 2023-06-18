extends Control


func _ready():
	$VBoxContainer/QuizTitle.text = mainDictionary.quizTutorial[globalVariables.quizType].title
	$VBoxContainer/QuizTutorial.text = mainDictionary.quizTutorial[globalVariables.quizType].tutorial
	pass

func _process(delta):
	globalVariables.quizArray = mainDictionary.randomizeArray()
	
func _on_Start_button_down():
	get_tree().change_scene("res://displayScenes/" + globalVariables.quizType + ".tscn")
