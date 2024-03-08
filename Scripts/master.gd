extends Node2D


var stage = 0
@onready var Tiles = $TileMap

var ground_layer = 0
var road_layer = 1
var building_layer = 2
@export var editTile = true
var Stage1path = load("res://Scenes/Stage1.tscn")
var Stage2path = load("res://Scenes/Stage2.tscn")
var Stage3path = load("res://Scenes/Stage3.tscn")
var donce1 = true
var donce2 = true
var donce3 = true


func _ready():
	if editTile == false:
		Tiles.set_cell(ground_layer,Vector2i(0,0) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-1) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-2) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(1,-2) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(2,-2) ,-1 , Vector2i(0,0))
		
		Tiles.set_cell(road_layer,Vector2i(0,0) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-1) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-2) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(1,-2) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(2,-2) , -1 , Vector2i(0,0))
		
		Tiles.set_cell(ground_layer,Vector2i(-1,0) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-1) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-2) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-3) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-3) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(1,-3) ,-1 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(2,-3) ,-1 , Vector2i(0,0))
		
		Tiles.set_cell(road_layer,Vector2i(-1,0) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-1) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-2) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-3) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-3) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(1,-3) , -1 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(2,-3) , -1 , Vector2i(0,0))
	$AnimationPlayer.play("Faderingout")
	await get_tree().create_timer(1.5).timeout
	queue_free
	
	pass

func _process(delta):
	if Input.is_action_pressed("cheat_crowns"):
		global.Crowns += 10
	
	if global.Crowns >= 0 and stage == 0 and donce1:
		donce1 = false
		
		var Stage1 = Stage1path.instantiate()
		add_child(Stage1)
		stage = 1
		
	if global.Crowns >= 500 and stage == 1 and donce2:
		donce2 = false
		
		var Stage2 = Stage2path.instantiate()
		add_child(Stage2)
		stage = 2
		
		Tiles.set_cell(ground_layer,Vector2i(0,0) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-1) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-2) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(1,-2) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(2,-2) , 8 , Vector2i(0,0))
		
		Tiles.set_cell(road_layer,Vector2i(0,0) , 10 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-1) , 11 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-2) , 12 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(1,-2) , 13 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(2,-2) , 14 , Vector2i(0,0))
		
		$Camera2D.zoom = Vector2(0.7,0.7)
		$Camera2D.offset = Vector2(2875,1000)
	
	if global.Crowns >= 1000 and stage == 2 and donce3:
		donce3 = false
		
		var Stage3 = Stage3path.instantiate()
		add_child(Stage3)
		stage = 3
		
		Tiles.set_cell(ground_layer,Vector2i(-1,0) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-1) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-2) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(-1,-3) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(0,-3) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(1,-3) , 8 , Vector2i(0,0))
		Tiles.set_cell(ground_layer,Vector2i(2,-3) , 8 , Vector2i(0,0))
		
		Tiles.set_cell(road_layer,Vector2i(-1,0) , 15 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-1) , 16 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-2) , 17 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(-1,-3) , 18 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(0,-3) , 19 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(1,-3) , 20 , Vector2i(0,0))
		Tiles.set_cell(road_layer,Vector2i(2,-3) , 21 , Vector2i(0,0))
		
		$Camera2D.zoom = Vector2(0.5,0.5)
		$Camera2D.offset = Vector2(2875,500)
