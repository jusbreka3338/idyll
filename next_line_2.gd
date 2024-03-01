extends RichTextLabel

var ClickTime = false
# Called when the node enters the scene tree for the first time.
func _ready():
	visible_characters = 0
	await get_tree().create_timer(6.0).timeout

func _process(delta):
	trash_pickup()



func _on_tutorial_1_visibility_changed():
	visible_characters = 45
	ClickTime = true


func trash_pickup():
	if global.Crowns > 0:
		visible = false
