extends ColorRect


func _ready():
	pass


func _on_Yes_button_down():
	globalVariables.vocabRead = []
	globalVariables.achievement1 = 0
	globalVariables.achievement2 = 0
	globalVariables.achievement3 = 0
	globalVariables.saveProgress()
	queue_free()

func _on_No_button_down():
	queue_free()
