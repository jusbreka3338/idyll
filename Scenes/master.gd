extends Node2D

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75

var stage = 1

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("cheat_crowns"):
		global.Crowns += 10
	
	if global.Crowns >= 0 and stage == 1:
		var simultaneous_scene = preload("res://Scenes/TestMap.tscn").instantiate() #chooses scene to load
		
		get_tree().root.add_child(simultaneous_scene) #loads scene
		stage = 1
		global.Crowns = 0
		

func _add_a_scene_manually():
	pass

#this comment will save the project!!!
