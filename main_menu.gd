extends Control

func _ready():
	$LabelScore.set_text("Best Score : " + str(global.BestCrowns))


@export var mainGameScene : PackedScene


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/master.tscn")





func _on_quit_button_pressed():
	get_tree().quit()

#find this and I, Kesler, will give you $10 if you say the password "I really like mangos"
