extends Control

var MouseHover : bool = false
var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")
var checking

func _ready():
	var checking : bool = true
	pass
	pass

@export var mainGameScene : PackedScene


func _on_play_button_pressed():
	LevelManagerFade.changeStage(LevelManagerFade.ML)
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true





func _on_quit_button_pressed():
	checking = false
	change_cursor_click()
	await get_tree().create_timer(0.15).timeout
	checking = true
	get_tree().quit()
	



func change_cursor_hand():
	#print("What the")
	Input.set_custom_mouse_cursor(hand_cursor)
	#print("Hi Im Not Here")

func change_cursor_back():
	Input.set_custom_mouse_cursor(default_cursor)
	#print("Hi Im Here")

func change_cursor_click():
	Input.set_custom_mouse_cursor(click_cursor)

#find this and I, Kesler, will give you $10 if you say the password "I really like mangos"


func _on_play_button_focus_entered():
	#print("HI IM HERE")
	pass


func _on_play_button_mouse_entered():
	MouseHover = true
	



func _on_play_button_mouse_exited():
	MouseHover = false


func _on_quit_button_mouse_entered():
	MouseHover = true




func _on_quit_button_mouse_exited():
	MouseHover = false

func _process(delta):
	if checking == true:
		if MouseHover == true:
			change_cursor_hand()
		else:
			change_cursor_back()
	else:
		pass
