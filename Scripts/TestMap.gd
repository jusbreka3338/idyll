extends Node2D

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75

func _ready():
	pass

func _process(delta):
	$BobPath/BobFollow.progress += BOBspeed * delta
	$FredPath/FredFollow.progress += FREDspeed * delta
	$StacyPath/StacyFollow.progress += STACYspeed * delta

	if Input.is_action_just_pressed("Cheat"):
		global.Crowns += 10
