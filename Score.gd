extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Scoring_Current.text = str(global.Crowns)
	$Scoring.text = "Best Score : " + str(global.BestCrowns)
	if global.Crowns > global.BestCrowns:
		global.BestCrowns = global.Crowns
	global.save_bestscore()
