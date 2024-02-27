extends Control


@export var mainGameScene : PackedScene


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/TestMap.tscn")


func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://Credits.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
