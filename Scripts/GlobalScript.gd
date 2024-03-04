extends Node



var Crowns = 0

var BestCrowns = 0 

var save_path = "user://bestscore.data"

func _ready():
	load_bestscore()
	pass

func load_bestscore():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		BestCrowns = file.get_var(BestCrowns)
		print("loaded")
	else:
		print("no data saved...")
		BestCrowns = 0


func save_bestscore():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(BestCrowns)

func set_bestscore(new_value):
	BestCrowns = new_value
	save_bestscore()
	pass
