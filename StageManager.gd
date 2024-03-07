extends CanvasLayer


const MM = ("res://main_menu.tscn")

func _ready():
	get_node("ColorRect2").hide()
	hide()



func changeStage(stage_path):
	get_node("ColorRect2").show()
	show()
	$AnimationPlayer.play("ToMain")
	await $AnimationPlayer.animation_finished
	
	get_tree().change_scene_to_file(stage_path)
	
	$AnimationPlayer.play("Fadeout")
	await $AnimationPlayer.animation_finished
	get_node("ColorRect2").hide
	hide()
