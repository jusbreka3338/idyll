extends Node2D

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75
@onready var only_once : bool = true #variable for running code once
var stage = 1

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("cheat_crowns"):
		global.Crowns += 10
	
	if global.Crowns >= 0 and stage == 1 && only_once:
		var simultaneous_scene = preload("res://Scenes/TestMap.tscn").instantiate() #chooses scene to load
		only_once = false
		
		get_tree().root.add_child(simultaneous_scene) #loads scene
		stage = 2

func _add_a_scene_manually():
	pass

#this comment will save the project!!!
