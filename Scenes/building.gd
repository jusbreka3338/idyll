extends Node2D

var building1 = load("res://Assets/Buildings/frame_apngframe01.png")
var building2 = load("res://Assets/Buildings/frame_apngframe02.png")
var building3 = load("res://Assets/Buildings/frame_apngframe03.png")
var building4 = load("res://Assets/Buildings/frame_apngframe04.png")
var building5 = load("res://Assets/Buildings/frame_apngframe05.png")

@export var buildingTexture = building1


func _ready():
	$Sprite2D.texture = buildingTexture
