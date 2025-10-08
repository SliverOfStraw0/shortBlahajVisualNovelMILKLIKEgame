extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GLOBAL.currentSaveFileToStartOnSceneSwich == "START_NEW_GAME" or GLOBAL.currentSaveFileToStartOnSceneSwich == null or GLOBAL.currentSaveFileToStartOnSceneSwich == "":
		Dialogic.start("starting")
	else:
		Dialogic.Save.load(GLOBAL.currentSaveFileToStartOnSceneSwich)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_start_menue.tscn")


func _on_timer_timeout() -> void:
	$Button.show()
	$CenterContainer.hide()


func _on_back_to_main_menue_pressed() -> void:
	Dialogic.end_timeline()
	get_tree().change_scene_to_file("res://scenes/main_start_menue.tscn")
