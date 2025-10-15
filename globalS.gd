extends Node

var currentSaveFileToStartOnSceneSwich: String

var allEndings = []

var currentUnlockedEndings = []

func switchToRunOverByATruckEnding():
	get_tree().change_scene_to_file("res://scenes/ending_run_over_by_a_truck.tscn")

func chnageToMainSave(saveName):
	GLOBAL.currentSaveFileToStartOnSceneSwich = str(saveName)
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	
func chnageToExplodedEnding():
	get_tree().change_scene_to_file("res://scenes/kaboom_ending.tscn")
	
func getsInTheCarEnding():
	get_tree().change_scene_to_file("res://scenes/gets_in_the_car_ending.tscn")
	
var ver: String = "ALPHA 0.1.0"
