extends Control

func _ready():
	$AnimationPlayer.play("RESET")
	hide()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()

func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()


func _on_button_pressed():
	resume()
	hide()


func _on_button_2_pressed():
	resume()
	get_tree().reload_current_scene()
	hide()


func _on_button_3_pressed():
	resume()
	get_tree().change_scene_to_file("res://main_menu.tscn")
	hide()


func _on_button_4_pressed():
	get_tree().quit()

func _process(delta):
	testEsc()
