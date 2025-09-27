extends Control

var xMin = 107
var xMax = 693
var yMin = -283
var yMax = 870
var ssaveName

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	$background/bg.position = genRandomBGXY()
	$"load from save".mouse_filter = MOUSE_FILTER_IGNORE
	ignoreLoadButtons()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func genRandomBGXY():
	return Vector2(randf_range(xMin,xMax),randf_range(yMin,yMax))
	
func chnageSceneWithSaveName(saveName):
	$"loading screen".show()
	ssaveName = saveName
	$"loading screen/show laoding screen".start()
	#go to "_on_show_laoding_screen_timeout" for the rest of the script

func ignoreLoadButtons():
	$"load from save".hide()
	$items.show()
	for _i in $"load from save/MarginContainer/VBoxContainer".get_children():
		_i.mouse_filter = MOUSE_FILTER_IGNORE
	for _i in $items/MarginContainer/VBoxContainer.get_children():
		_i.mouse_filter = MOUSE_FILTER_STOP

func mouseModeStopButton(): #lets you use the load menue. shows the load menue, hides the "items" menue(the menue with load,settings, credits), makes the mouse mode to "stop" for the load menue and ignores the buttons on the items menue
	$"load from save".show()
	$items.hide()
	for _i in $"load from save/MarginContainer/VBoxContainer".get_children():
		_i.mouse_filter = MOUSE_FILTER_STOP
	for _i in $items/MarginContainer/VBoxContainer.get_children():
		_i.mouse_filter = MOUSE_FILTER_IGNORE
	
	
func _on_load_menue_pressed() -> void:
	mouseModeStopButton()


func _on_back_to_main_menue_pressed() -> void:
	ignoreLoadButtons()


func _on_auto_save_pressed() -> void:
	chnageSceneWithSaveName("autosaveTest01")


func _on_new_game_pressed() -> void:
	chnageSceneWithSaveName("START_NEW_GAME")


func _on_setting_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/settings.tscn")


func _on_show_laoding_screen_timeout() -> void: #not to show the loading screen but to start the loading of the game procces
	GLOBAL.currentSaveFileToStartOnSceneSwich = str(ssaveName)
	get_tree().change_scene_to_file("res://scenes/main.tscn")
