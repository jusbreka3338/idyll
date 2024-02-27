extends Control

func _ready():
	
	$AnimationPlayer.play("Fade In")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Fade Out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://main_menu.tscn")

func testEs():
	if Input.is_action_just_pressed("skip"):
		get_tree().change_scene_to_file("res://main_menu.tscn")


func _process(delta):
	testEsc()
	
	
	
	

func skip():
	get_tree().change_scene_to_file("res://main_menu.tscn")

func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		skip()
