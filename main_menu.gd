extends Control

func _ready():
	pass

@export var mainGameScene : PackedScene


func _on_play_button_pressed():
	$AnimationPlayer.play("fadeingin")
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://Scenes/master.tscn")





func _on_quit_button_pressed():
	get_tree().quit()

#find this and I, Kesler, will give you $10 if you say the password "I really like mangos"
