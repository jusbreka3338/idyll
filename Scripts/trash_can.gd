extends Node2D

var MouseHover : bool = false
var TrashNumber = 0
var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")
var checking

func ready():
	var checking : bool = true
	pass

func _on_click_area_mouse_entered():
	MouseHover = true
	$AudioStreamPlayer2D3.play()


func _on_click_area_mouse_exited():
	MouseHover = false

func _process(delta):
	if checking == true:
		if MouseHover == true:
			change_cursor_hand()
		else:
			change_cursor_back()
	else:
		pass
	
	if Input.is_action_just_pressed("Click") and MouseHover == true and TrashNumber <3 :
		TrashNumber = 3
		$AudioStreamPlayer2D.play()
		$Sprite2D/AnimationPlayer.play("TrashShake")
		checking = false
		change_cursor_click()
		await get_tree().create_timer(0.15).timeout
		checking = true
		
		
	if TrashNumber >= 1:
		$Trash1.visible = true
	else:
		$Trash1.visible = false
		
	if TrashNumber >= 2:
		$Trash2.visible = true
	else:
		$Trash2.visible = false
		
	if TrashNumber >= 3:
		$Trash3.visible = true
	else:
		$Trash3.visible = false



func _on_trash_area_area_entered(area):
	if area.is_in_group("NPC") and TrashNumber > 0:
		TrashNumber -= 1
		global.Crowns += 3
		print(global.Crowns)
		$AudioStreamPlayer2D2.play()
		
		


func change_cursor_hand():
	if TrashNumber <3:
		Input.set_custom_mouse_cursor(hand_cursor)
	else: 
		change_cursor_back()

func change_cursor_back():
	Input.set_custom_mouse_cursor(default_cursor)

func change_cursor_click():
	Input.set_custom_mouse_cursor(click_cursor)

