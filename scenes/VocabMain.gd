extends Control

onready var word = $MarginContainer/HBoxContainer/VBoxContainer2/Word
onready var translate = $MarginContainer/HBoxContainer/VBoxContainer2/Translation
onready var sentence = $MarginContainer/HBoxContainer/VBoxContainer2/Sentence
onready var picture = $MarginContainer/HBoxContainer/VBoxContainer1/TextureRect

var pageNumber = 1

func _ready():
	pass

func _process(delta):
	
	pageNumber = str(get_parent().pageNumber)
	
	#loads dictionary to UI
	word.text = mainDictionary.vocabDictionary[pageNumber].word
	translate.text = "Arti Kata: " + mainDictionary.vocabDictionary[pageNumber].translate
	sentence.text = "Contoh dalam Kalimat: \n" + mainDictionary.vocabDictionary[pageNumber].sentence
	picture.texture = load("res://sprites/pictures/" + mainDictionary.vocabDictionary[pageNumber].word +".png")
	if load("res://sprites/pictures/" + mainDictionary.vocabDictionary[pageNumber].word +".png") == null:
		picture.texture = load("res://256x256.png")

func _on_TextureButton_button_down():
	$AudioStreamPlayer.stream = load("res://Audio/" + mainDictionary.vocabDictionary[pageNumber].word + ".wav")
	$AudioStreamPlayer.play()


func _on_AudioStreamPlayer_finished():
	pass
