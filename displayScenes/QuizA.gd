extends Control

onready var result = $VBoxContainer2/Result
onready var resultContainer = $VBoxContainer2

onready var a = $VBoxContainer/VBoxContainer/HBoxContainer/Option1/Button1
onready var b = $VBoxContainer/VBoxContainer/HBoxContainer/Option2/Button2
onready var c = $VBoxContainer/VBoxContainer/HBoxContainer2/Option3/Button3
onready var d = $VBoxContainer/VBoxContainer/HBoxContainer2/Option4/Button4

var second = 0
var minute = 0
var displaySecond = 0

var rightAnswer = 0
var wrongAnswer = 0

var currentQuizNumber = 0

var selectedAnswer = 0

var showingResult = 0

func _ready():
	resultContainer.visible = false
	$HBoxContainer/Submit.visible = false
	currentQuizNumber = 0
	globalVariables.quizArray = mainDictionary.randomizeArray()
	
func _process(delta):
	
	if globalVariables.isPaused == false:
		second += 1 * delta
	
	displaySecond = floor(second)
	
	if second < 10:
		$Timer.text = str(minute) + ":0" + str(displaySecond)
	else:
		$Timer.text = str(minute) + ":" + str(displaySecond)
	
	if second > 60:
		second -= 60
		minute += 1
	
	$VBoxContainer/QuestionTitle.text = "No." + str(currentQuizNumber + 1) + ": Manakah yang merupakan Bahasa Inggris dari"
	$VBoxContainer/Question.text = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].question
	$VBoxContainer/VBoxContainer/HBoxContainer/Option1/Label1.text = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option1
	$VBoxContainer/VBoxContainer/HBoxContainer/Option2/Label2.text = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option2
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option3/Label3.text = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option3
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option4/Label4.text = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option4
	
	if showingResult:
		resultContainer.visible = true
		$HBoxContainer/Submit.visible = false
		$HBoxContainer/Next.visible = true
	else:
		if selectedAnswer == 0:
			$HBoxContainer/Submit.visible = false
		else:
			$HBoxContainer/Submit.visible = true
		resultContainer.visible = false
		$HBoxContainer/Next.visible = false
	
	if Input.is_action_pressed("ui_up"):
		print(selectedAnswer)
		#globalVariables.quizArray = mainDictionary.randomizeArray()
	


func _on_Button1_button_down():
	if $VBoxContainer/VBoxContainer/HBoxContainer/Option1/Button1.pressed:
		selectedAnswer = 0
	else:
		selectedAnswer = 1
	b.pressed = 0
	c.pressed = 0
	d.pressed = 0


func _on_Button2_button_down():
	if $VBoxContainer/VBoxContainer/HBoxContainer/Option2/Button2.pressed:
		selectedAnswer = 0
	else:
		selectedAnswer = 2
	a.pressed = 0
	c.pressed = 0
	d.pressed = 0

func _on_Button3_button_down():
	if $VBoxContainer/VBoxContainer/HBoxContainer2/Option3/Button3.pressed:
		selectedAnswer = 0
	else:
		selectedAnswer = 3
	a.pressed = 0
	b.pressed = 0
	d.pressed = 0

func _on_Button4_button_down():
	if $VBoxContainer/VBoxContainer/HBoxContainer2/Option4/Button4.pressed:
		selectedAnswer = 0
	else:
		selectedAnswer = 4
	a.pressed = 0
	b.pressed = 0
	c.pressed = 0

func _on_Submit_button_down():
	var correctAnswer = ""
	var question = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].question
	
	if mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].correctAnswer == "1":
		correctAnswer = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option1
	elif mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].correctAnswer == "2":
		correctAnswer = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option2
	elif mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].correctAnswer == "3":
		correctAnswer = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option3
	elif mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].correctAnswer == "4":
		correctAnswer = mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].option4
	
	showingResult = 1
	
	if selectedAnswer == int(mainDictionary.quizDictionaryA[str(globalVariables.quizArray[currentQuizNumber])].correctAnswer):
		result.text = "Jawabanmu Benar!\nBahasa Inggris dari\n" + question + " adalah: \n" + correctAnswer
		rightAnswer += 1
		$VBoxContainer2/AnswerResult.texture = load("res://sprites/buttons/Answer_Correct.png")
	else:
		result.text = "Jawabanmu Kurang Tepat!\nBahasa Inggris dari\n" + question + " adalah: \n" + correctAnswer
		wrongAnswer += 1
		$VBoxContainer2/AnswerResult.texture = load("res://sprites/buttons/Answer_Wrong.png")
	
	#Make each buttons unclickable after submitting
	$VBoxContainer/VBoxContainer/HBoxContainer/Option1/Button1.set_disabled(true)
	$VBoxContainer/VBoxContainer/HBoxContainer/Option2/Button2.set_disabled(true)
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option3/Button3.set_disabled(true)
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option4/Button4.set_disabled(true)
	
func _on_Next_button_down():
	a.pressed = 0
	b.pressed = 0
	c.pressed = 0
	d.pressed = 0
	
	if currentQuizNumber == 9:
		globalVariables.rightAnswer = rightAnswer
		globalVariables.wrongAnswer = wrongAnswer
		globalVariables.secondTaken = displaySecond
		globalVariables.minuteTaken = minute
		get_tree().change_scene("res://displayScenes/QuizResult.tscn")
	else:
		showingResult = 0
		selectedAnswer = 0
		currentQuizNumber += 1
		
	#Make each buttons clickable after submitting
	$VBoxContainer/VBoxContainer/HBoxContainer/Option1/Button1.set_disabled(false)
	$VBoxContainer/VBoxContainer/HBoxContainer/Option2/Button2.set_disabled(false)
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option3/Button3.set_disabled(false)
	$VBoxContainer/VBoxContainer/HBoxContainer2/Option4/Button4.set_disabled(false)
	
