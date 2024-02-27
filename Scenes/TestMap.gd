extends Node2D

const NPCspeed = 15

func _ready():
	pass

func _process(delta):
	$Path2D/PathFollow2D.progress += NPCspeed * delta
