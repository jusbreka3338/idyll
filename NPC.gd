extends Node2D


func _physics_process(delta):
	const move_speed := 100.0
	$Path2D/PathFollow2D.progress += move_speed * delta
