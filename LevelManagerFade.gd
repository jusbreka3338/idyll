extends CanvasLayer

const ML = ("res://Scenes/master.tscn")

func _ready():
	get_node("ColorRect").hide()
	hide()
	
	

func changeStage(stage_path):
	get_node("ColorRect").show()
	show()
	$AnimationPlayer.play("Maintoreal")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(stage_path)
	$AnimationPlayer.play("RealOut")
	await $AnimationPlayer.animation_finished
	get_node("ColorRect").hide
	hide()
