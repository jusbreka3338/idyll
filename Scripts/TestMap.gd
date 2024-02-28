extends Node2D

const NPCspeed = 50

func _ready():
	pass

func _process(delta):
	$Path2D/PathFollow2D.progress += NPCspeed * delta
