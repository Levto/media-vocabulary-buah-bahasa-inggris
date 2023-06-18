extends Node

#for save and load progress
const FILE_NAME = "user://progress-data.json"
var saveFileDict = {
	"vocabRead": [],
	"achievement1": 0,
	"achievement2": 0,
	"achievement3": 0
}


#Variable to hide main menu overlay after first time
var mainMenuOverlay = 1

#Pointer when selecting letter from AZMenu
var selectedLetter = 1

#Pointer for quiz type
var quizType = ""

#Quiz Score for result screen
var rightAnswer = 0
var wrongAnswer = 0
var secondTaken = 0
var minuteTaken = 0

#Quiz Scores for unlocking special quiz
var quizACleared = 0
var quizBCleared = 0
var specialTicket = 0

#Quiz randomizer
var quizArray = []
var currentQuizNumber = 0

#Music player
var bgmPlaying = true
var bgmPlayback:float = 0.0

#Quiz timer pause
var isPaused = false

#Vocabulary list checker
var vocabRead = [] #used to check if the page number is listed or not. if unlisted, add in array. if array size = total page number -1, return true

#Achievement value
var achievement1 = 0
var achievement2 = 0
var achievement3 = 0

#Achievement overlay tracker
var unlockedAchievement = ""

func _ready():
	pass
	
func saveProgress():
	
	saveFileDict["vocabRead"] = vocabRead
	saveFileDict["achievement1"] = achievement1
	saveFileDict["achievement2"] = achievement2
	saveFileDict["achievement3"] = achievement3
	
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(saveFileDict))
	file.close()
	print("DATA SAVED!")
	
func loadProgress():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var dataLoaded = parse_json(file.get_as_text())
		file.close()
		if typeof(dataLoaded) == TYPE_DICTIONARY:
			saveFileDict = dataLoaded
			print("DATA LOADED!")
		else:
			saveProgress()
	else:
		saveProgress()
	
	for i in saveFileDict["vocabRead"].size():
		saveFileDict["vocabRead"][i] = int(saveFileDict["vocabRead"][i])
	vocabRead = saveFileDict["vocabRead"]
	achievement1 = int(saveFileDict["achievement1"])
	achievement2 = int(saveFileDict["achievement2"])
	achievement3 = int(saveFileDict["achievement3"])

func _process(delta):
	pass
