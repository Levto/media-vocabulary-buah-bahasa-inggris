extends Control

onready var comment = $VBoxContainer/Comment
var overlay = load("res://scenes/AchievementOverlay.tscn")

func _ready():
	var score = globalVariables.rightAnswer * 10
	
#	if globalVariables.quizType == "QuizA":
#		if globalVariables.quizACleared == 0:
#			if score >= 80:
#				$Tips.text = "Selamat! Kamu mendapatkan tiket quiz spesial A!"
#				globalVariables.quizACleared = 1
#			else:
#				$Tips.text = "Dapatkan skor 80 atau lebih untuk mendapatkan tiket quiz spesial!"
#		else:
#			$Tips.text = "Kamu telah memiliki tiket spesial dari quiz ini."
#	else:
#		if globalVariables.quizBCleared == 0:
#			if score >= 80:
#					$Tips.text = "Selamat! Kamu mendapatkan tiket quiz spesial B!"
#					globalVariables.quizBCleared = 1
#			else:
#				$Tips.text = "Dapatkan skor 80 atau lebih untuk mendapatkan tiket quiz spesial!"
#		else:
#			$Tips.text = "Kamu telah memiliki tiket spesial dari quiz ini."
	
	if score == 100:
		if globalVariables.quizType == "QuizA" and (globalVariables.achievement2 == 0 or globalVariables.achievement2 == 1):
			globalVariables.achievement2 = 2
			globalVariables.unlockedAchievement = "A22"
			var overlayNode = overlay.instance()
			add_child(overlayNode)
			
		elif globalVariables.quizType == "QuizB" and (globalVariables.achievement3 == 0 or globalVariables.achievement3 == 1):
			globalVariables.achievement3 = 2
			globalVariables.unlockedAchievement = "A32"
			var overlayNode = overlay.instance()
			add_child(overlayNode)
	else:
		if globalVariables.quizType == "QuizA" and globalVariables.achievement2 == 0:
			globalVariables.achievement2 = 1
			globalVariables.unlockedAchievement = "A21"
			var overlayNode = overlay.instance()
			add_child(overlayNode)
		
		elif globalVariables.quizType == "QuizB" and globalVariables.achievement3 == 0:
			globalVariables.achievement3 = 1
			globalVariables.unlockedAchievement = "A31"
			var overlayNode = overlay.instance()
			add_child(overlayNode)
		
	
	if score == 100:
		comment.text = "Skor Sempurna! Kamu telah belajar dengan baik!"
	elif score >= 80:
		comment.text = "Skor yang bagus! Sedikit lagi menuju skor sempurna!"
	elif score >= 60:
		comment.text = "Terus tingkatkan lagi di percobaan selanjutnya!"
	else:
		comment.text = "Mari kita periksa kembali daftar kosakata!"
		
	$VBoxContainer/Score.text = str(score)
	$VBoxContainer/CorrectAnswer.text = "Jawaban Benar: " + str(globalVariables.rightAnswer)
	$VBoxContainer/WrongAnswer.text = "Jawaban Salah: " + str(globalVariables.wrongAnswer)
	if globalVariables.secondTaken < 10:
		$VBoxContainer/Time.text = "Waktu pengerjaan: " + str(globalVariables.minuteTaken) + ":0" + str(globalVariables.secondTaken)
	else:
		$VBoxContainer/Time.text = "Waktu pengerjaan: " + str(globalVariables.minuteTaken) + ":" + str(globalVariables.secondTaken)
	
func _process(delta):
	pass
