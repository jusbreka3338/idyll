extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$".".visible = false
	await get_tree().create_timer(6.0).timeout
	$".".visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_tutorial_2_visibility_changed():
	visible = false
