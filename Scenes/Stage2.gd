extends Node2D
#func _ready():
	#get_node("	res://Scenes/.tscn").free()
	

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75

var stage = 1


func _process(delta):
	pass
	
	if Input.is_action_pressed("cheat_crowns"):
		global.Crowns += 10
	
	if global.Crowns >= 500 and stage == 1:
		var simultaneous_scene = preload("res://Scenes/Stage2.tscn").instantiate()
		
		get_tree().root.add_child(simultaneous_scene)
		stage = 2
		global.Crowns = 0
		


func _add_a_scene_manually():
	pass

#this comment will save the project!!!