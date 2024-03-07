extends Node2D

@export var NPCname = "none"
var speed = 100

func _ready():
	match NPCname:
		
		"none":
			pass
		"andrew":
			position = Vector2(1271,1646 - 500)
			$Path2D.curve.add_point(Vector2(0,0))
			$Path2D.curve.add_point(Vector2(1564,904))
			$Path2D.curve.add_point(Vector2(3151,-5))
			$Path2D.curve.add_point(Vector2(3000,-93))
			$Path2D.curve.add_point(Vector2(2648,121))
			$Path2D.curve.add_point(Vector2(1190,-715))
			$Path2D.curve.add_point(Vector2(1158,-681))
			$Path2D.curve.add_point(Vector2(2597,141))
			$Path2D.curve.add_point(Vector2(1571,739))
			$Path2D.curve.add_point(Vector2(143,-91))
			$Path2D.curve.add_point(Vector2(0,0))
			speed = 60
		"zane":
			position = Vector2(-244,612 - 500)
			$Path2D.curve.add_point(Vector2(0,0))
			$Path2D.curve.add_point(Vector2(835,468))
			$Path2D.curve.add_point(Vector2(1861,-134))
			$Path2D.curve.add_point(Vector2(1031,-615))
			$Path2D.curve.add_point(Vector2(2249,-1309))
			$Path2D.curve.add_point(Vector2(4155,-206))
			$Path2D.curve.add_point(Vector2(3942,-60))
			$Path2D.curve.add_point(Vector2(5241,692))
			$Path2D.curve.add_point(Vector2(3082,1932))
			$Path2D.curve.add_point(Vector2(-150,77))
			$Path2D.curve.add_point(Vector2(0,0))
			speed = 50
		"cody":
			position = Vector2(2367,2127 - 500)
			$Path2D.curve.add_point(Vector2(0,0))
			$Path2D.curve.add_point(Vector2(469,265))
			$Path2D.curve.add_point(Vector2(961,-23))
			$Path2D.curve.add_point(Vector2(1127,63))
			$Path2D.curve.add_point(Vector2(472,443))
			$Path2D.curve.add_point(Vector2(-145,88))
			$Path2D.curve.add_point(Vector2(0,0))
			speed = 45
		"peyton":
			pass
		"sienna":
			pass
		"kesler":
			pass
		"thomas":
			pass
		"taylor":
			pass

func _process(delta):
	$Path2D/PathFollow2D.progress += speed * delta
