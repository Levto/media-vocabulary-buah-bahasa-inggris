extends ColorRect


func _ready():
	globalVariables.saveProgress()
	$VBoxContainer/TextureButton.disabled = true
	$AnimationPlayer.play("EnterTree")
	
	$VBoxContainer/TextureRect.texture = load("res://sprites/achievements/" + globalVariables.unlockedAchievement + ".png")
	if globalVariables.unlockedAchievement == "A11":
		$VBoxContainer/Title.text = "[Learner]"
	elif globalVariables.unlockedAchievement == "A21":
		$VBoxContainer/Title.text = "[Quiz A Challenger]"
	elif globalVariables.unlockedAchievement == "A22":
		$VBoxContainer/Title.text = "[Quiz A Master]"
	elif globalVariables.unlockedAchievement == "A31":
		$VBoxContainer/Title.text = "[Quiz B Challenger]"
	elif globalVariables.unlockedAchievement == "A32":
		$VBoxContainer/Title.text = "[Quiz B Master]"

func _on_TextureButton_button_down():
	queue_free()


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "EnterTree":
		$VBoxContainer/TextureButton.disabled = false
