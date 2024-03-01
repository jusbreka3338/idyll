extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	visible_characters = 0


func _on_tutorial_2_visibility_changed():
	visible_characters = 80
