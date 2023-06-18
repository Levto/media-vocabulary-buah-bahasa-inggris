extends Control

var overlay = load("res://scenes/ResetOverlay.tscn")

onready var a1 = $VBoxContainer/HBoxContainer/VBoxContainer/Achievement1
onready var a2 = $VBoxContainer/HBoxContainer/VBoxContainer2/Achievement2
onready var a3 = $VBoxContainer/HBoxContainer/VBoxContainer3/Achievement3

onready var label1 = $VBoxContainer/HBoxContainer/VBoxContainer/AchivementLabel1
onready var label2 = $VBoxContainer/HBoxContainer/VBoxContainer2/AchivementLabel2
onready var label3 = $VBoxContainer/HBoxContainer/VBoxContainer3/AchivementLabel3

func _process(delta):
	if globalVariables.achievement1 == 0:
		a1.texture = load("res://sprites/achievements/A0.png")
		label1.text = "Baca seluruh daftar\nkosakata untuk membuka"
	else:
		a1.texture = load("res://sprites/achievements/A11.png")
		label1.text = "[Learner]\nMembaca seluruh\nkosakata"
	
	if globalVariables.achievement2 == 0:
		a2.texture = load("res://sprites/achievements/A0.png")
		label2.text = "Selesaikan Quiz Tebak\nKata untuk membuka"
	elif globalVariables.achievement2 == 1:
		a2.texture = load("res://sprites/achievements/A21.png")
		label2.text = "[Quiz A Challenger]\nMenyelesaikan Quiz Tebak Kata\n(Dapatkan skor 100 untuk\nmedapatkan medali spesial!)"
	elif globalVariables.achievement2 == 2:
		a2.texture = load("res://sprites/achievements/A22.png")
		label2.text = "[Quiz A Master]\nMendapatkan skor 100 di\nQuiz Tebak Kata"
	
	if globalVariables.achievement3 == 0:
		a3.texture = load("res://sprites/achievements/A0.png")
		label3.text = "Selesaikan Quiz Tebak\nArti untuk membuka"
	elif globalVariables.achievement3 == 1:
		a3.texture = load("res://sprites/achievements/A31.png")
		label3.text = "[Quiz B Challenger]\nMenyelesaikan Quiz Tebak Arti\n(Dapatkan skor 100 untuk\nmedapatkan medali spesial!)"
	elif globalVariables.achievement3 == 2:
		a3.texture = load("res://sprites/achievements/A32.png")
		label3.text = "[Quiz B Master]\nMendapatkan skor 100 di\nQuiz Tebak Arti"

func _on_Reset_button_down():
	var overlayNode = overlay.instance()
	get_parent().add_child(overlayNode)
