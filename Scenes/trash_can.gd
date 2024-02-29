extends Node2D

var MouseHover = false
var TrashNumber = 0

func _on_click_area_mouse_entered():
	MouseHover = true


func _on_click_area_mouse_exited():
	MouseHover = false

func _process(delta):
	if Input.is_action_just_pressed("Click") and MouseHover == true and TrashNumber <3 :
		TrashNumber += 1
		
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
