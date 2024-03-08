
#var MouseHover : bool = false
#var isOpen : bool = false
#var hand_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
#var click_cursor = preload("res://Assets/Mouse Cursor/Click Cursor.png")
#var default_cursor = preload("res://Assets/Mouse Cursor/DefaultCursor.png")
#var hover_cursor = preload("res://Assets/Mouse Cursor/HoverCursor.png")
#var checkingstore : bool = true
#var random = 3
#var shouldOpen : bool = false
#var notOpen : bool = true
#
#func ready(): 
	#pass
	#
#
#func _process(_delta):
	#
	#
	#if shouldOpen:
		#global.Crowns +=1
		#
		#
	#if shouldOpen == true:
		#$AnimationPlayer.play("crowd")
	#if isOpen == true:
		#$AnimationPlayer.play("open")
	#if shouldOpen == false && isOpen == false:
		#$AnimationPlayer.play("nocrowd") 
			## manages playing animation when store is open
		#
		#if Input.is_action_just_pressed("Click") and MouseHover == true && shouldOpen == true:
			#isOpen = true
			#shouldOpen = false
			#notOpen = false
			#global.Crowns += 5
			#$AnimationPlayer.play("nocrowd")
#
#
#
#func _on_timer_timeout():
	#random = randi_range(0, 1)
		#
	#if random == 1 && notOpen == true:
		#shouldOpen = true
	#else: shouldOpen = false
#
#
#
#
#
#func _on_click_area_mouse_entered():
	#MouseHover = true
	#
#
#
#func _on_click_area_mouse_exited():
	#MouseHover = false
#
#func change_cursor_hand():
	#if shouldOpen and MouseHover:
		#Input.set_custom_mouse_cursor(hand_cursor)
	#else: 
		#change_cursor_back()
#
#func change_cursor_back():
	#Input.set_custom_mouse_cursor(default_cursor)
#
#func change_cursor_click():
	#Input.set_custom_mouse_cursor(click_cursor)
#
#
#func _on_button_pressed():
	#if shouldOpen:
		#isOpen = true
		#shouldOpen = false
		#notOpen = false
		#global.Crowns += 5
		#$AnimationPlayer.play("nocrowd")
