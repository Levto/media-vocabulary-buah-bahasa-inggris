extends Control

var pageNumber = 1
var overlay = load("res://scenes/AchievementOverlay.tscn")

func _ready():
	pageNumber = globalVariables.selectedLetter
	
	if globalVariables.vocabRead == null:
		globalVariables.vocabRead.append(pageNumber)
	else:
		var checkListed = globalVariables.vocabRead.has(pageNumber)
		if checkListed == false:
			globalVariables.vocabRead.append(pageNumber)
			globalVariables.saveProgress()

func _process(delta):
	
	#hides previous button in first page
	if pageNumber == 1 or pageNumber == 15:
		$HBoxContainer/Prev.visible = 0
	else:
		$HBoxContainer/Prev.visible = 1
	
	#hides next button in last page
	if pageNumber == 14 or pageNumber ==  27:
		$HBoxContainer/Next.visible = 0
	else:
		$HBoxContainer/Next.visible = 1
		
	#check for achievement
	if globalVariables.vocabRead.size() >= 27 and globalVariables.achievement1 == 0:
		globalVariables.achievement1 = 1
		globalVariables.unlockedAchievement = "A11"
		var overlayNode = overlay.instance()
		add_child(overlayNode)
		

func _on_Prev_button_down():
	pageNumber -= 1
	var checkListed = globalVariables.vocabRead.has(pageNumber)
	if checkListed == false:
		globalVariables.vocabRead.append(pageNumber)
		globalVariables.saveProgress()
	
func _on_Next_button_down():
	pageNumber += 1
	var checkListed = globalVariables.vocabRead.has(pageNumber)
	if checkListed == false:
		globalVariables.vocabRead.append(pageNumber)
		globalVariables.saveProgress()
