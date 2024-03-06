extends Control

func _ready():
	$ColorRect3.show()
	$RichTextLabel.set_text("Best Score : " + str(global.BestCrowns))
	$AnimationPlayer.play("Fadeout")
	await get_tree().create_timer(1.5).timeout
	$ColorRect3.hide()


@export var mainGameScene : PackedScene


func _on_play_button_pressed():
	$AnimationPlayer.play("fadeingin")
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://Scenes/master.tscn")





func _on_quit_button_pressed():
	get_tree().quit()

#find this and I, Kesler, will give you $10 if you say the password "I really like mangos"
