extends Node2D

var MouseHover : bool = false
var isOpen : bool = false
var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")
var checkingstore : bool = true
var random = 3
var shouldOpen : bool = false
var notOpen : bool = true

func ready(): 
	$Timer
	pass

func _on_click_area_mouse_entered():
	MouseHover = true


func _on_click_area_mouse_exited():
	MouseHover = false
	

func _process(delta):
	
	
	 
		
		
	if shouldOpen == true:
		$AnimationPlayer.play("nocrowd")
	elif shouldOpen == false:
		$AnimationPlayer.play("crowd") 
			
		
		if Input.is_action_just_pressed("Click") and MouseHover == true && shouldOpen == true:
			isOpen = true
			shouldOpen = false
			notOpen = false



#func 
	#if area.is_in_group("NPC") and TrashNumber > 0:
		#TrashNumber -= 1
		#global.Crowns += 3
		#print(global.Crowns)
		#$AudioStreamPlayer2D2.play()
		
		


func _on_timer_timeout():
	random = randi_range(0, 1)
		
	if random == 1 && notOpen == true:
		shouldOpen = true
	else: shouldOpen = false
