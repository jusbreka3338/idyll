extends Node2D

var CarGo = true
var MouseHover = false
var checking
var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")


func _on_click_area_mouse_entered():
	MouseHover = true


func _on_click_area_mouse_exited():
	MouseHover = false


func _process(delta):
	if checking == true:
		if MouseHover == true:
			change_cursor_hand()
		else:
			change_cursor_back()
			
	if Input.is_action_just_pressed("Click") and MouseHover == true:
		if CarGo == true:
			CarGo = false
		elif CarGo == false:
			CarGo = true
		print(CarGo)

func change_cursor_hand():
	Input.set_custom_mouse_cursor(hand_cursor)
func change_cursor_back():
	Input.set_custom_mouse_cursor(default_cursor)
func change_cursor_click():
	Input.set_custom_mouse_cursor(click_cursor)



func _on_car_crossing_area_entered(area):
	if area.is_in_group("NPC"):
		if CarGo == true:
			area.get_parent().speed = 0


func _on_people_crossing_area_entered(area):
	if area.is_in_group("CAR"):
		pass
