extends Node

var currentSaveFileToStartOnSceneSwich: String

var allEndings = []

var currentUnlockedEndings = []

func switchToRunOverByATruckEnding():
	get_tree().change_scene_to_file("res://scenes/ending_run_over_by_a_truck.tscn")

func chnageToMainSave(saveName):
	GLOBAL.currentSaveFileToStartOnSceneSwich = str(saveName)
	get_tree().change_scene_to_file("res://scenes/main.tscn")
