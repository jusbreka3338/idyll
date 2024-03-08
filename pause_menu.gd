extends Control

var canpause : bool = true
var mainhit : bool = false
var MouseHover : bool = false
var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")
var checking

func _ready():
	var checking : bool = true
	$AnimationPlayer.play("RESET")
	hide()
	score.show()
	$ColorRect2.hide()
@onready var score = $"../Control"

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
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true


func _on_button_2_pressed():
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true
	resume()
	get_tree().reload_current_scene()
	global.Crowns = 0
	hide()
	score.show()
	


func _on_button_3_pressed():
	if mainhit == false:
		mainhit = true
		get_tree().paused = false
		canpause = false
		#resume()
		
		#$ColorRect2.show()
		
		#$AnimationPlayer.play("ToMain")
		
		#await get_tree().create_timer(1.5).timeout
		StageManager.changeStage(StageManager.MM)
		#get_tree().change_scene_to_file("res://main_menu.tscn")
		global.Crowns = 0
		#hide()
		score.show()
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true


func _on_button_4_pressed():
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true
	get_tree().quit()

func _process(delta):
	testEsc()
	if checking == true:
		if MouseHover == true:
			change_cursor_hand()
		else:
			change_cursor_back()
	else:
		pass

func change_cursor_hand():
	#print("What the")
	Input.set_custom_mouse_cursor(hand_cursor)
	#print("Hi Im Not Here")

func change_cursor_back():
	Input.set_custom_mouse_cursor(default_cursor)
	#print("Hi Im Here")

func change_cursor_click():
	Input.set_custom_mouse_cursor(click_cursor)


func _on_button_4_mouse_entered():
	MouseHover = true


func _on_button_4_mouse_exited():
	MouseHover = false


func _on_button_3_mouse_entered():
	MouseHover = true


func _on_button_3_mouse_exited():
	MouseHover = false


func _on_button_2_mouse_entered():
	MouseHover = true


func _on_button_2_mouse_exited():
	MouseHover = false


func _on_button_mouse_entered():
	MouseHover = true


func _on_button_mouse_exited():
	MouseHover = false
