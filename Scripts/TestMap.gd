extends Node2D

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75
var crowns = 0

func _ready():
	pass

func _process(delta):
	$BobPath/BobFollow.progress += BOBspeed * delta
	$FredPath/FredFollow.progress += FREDspeed * delta
	$StacyPath/StacyFollow.progress += STACYspeed * delta
	if crowns >= 500:
		var simultaneous_scene = preload("res://Scenes/Stage2.tscn").instantiate()

func _add_a_scene_manually():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	var simultaneous_scene = preload("res://Scenes/Stage2.tscn")
	get_tree().root.add_child(simultaneous_scene)
