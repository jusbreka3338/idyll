extends Node2D

var BOBspeed = 50
var FREDspeed = 45
var STACYspeed = 75
var donce = true

func _process(delta):
	$BobPath/BobFollow.progress += BOBspeed * delta
	$FredPath/FredFollow.progress += FREDspeed * delta
	$StacyPath/StacyFollow.progress += STACYspeed * delta
