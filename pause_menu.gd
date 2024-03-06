extends Control

var canpause : bool = true

func _ready():
	$AnimationPlayer.play("RESET")
	hide()
	score.show()
	$ColorRect2.hide()
@onready var score = $"../../Control"

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	hide()
	score.show()
	canpause = true

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()
	score.hide()
	visible

func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		if canpause == true:
			pause()
		else:
			pass
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		if canpause == true:
			resume()


func _on_button_pressed():
	resume()
	hide()
	score.show()


func _on_button_2_pressed():
	resume()
	get_tree().reload_current_scene()
	global.Crowns = 0
	hide()
	score.show()


func _on_button_3_pressed():
	get_tree().paused = false
	canpause = false
	#resume()
	$ColorRect2.show()
	$AnimationPlayer.play("ToMain")
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://main_menu.tscn")
	global.Crowns = 0
	#hide()
	score.show()


func _on_button_4_pressed():
	get_tree().quit()

func _process(delta):
	testEsc()
