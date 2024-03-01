extends RichTextLabel

var ClickTime = false
var Fingee = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".visible = false
	await get_tree().create_timer(6.0).timeout
	if Fingee == false:
		$"../Pointy".visible = false
	elif Fingee:
		$"../Pointy".visible = true




func _on_tutorial_1_visibility_changed():
	$".".visible = true
	Fingee = true

