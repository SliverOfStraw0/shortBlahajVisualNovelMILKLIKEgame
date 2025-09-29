extends Control

@export_category("settings")

@export_group("background")
@export var backgroundTexture: Texture
@export_range(0,5, 0.01) var darken: float = 1.5

@export_group("small image")
@export var smallImage: Texture
@export var expandMode: String
@export var strechMode: String
@export var flipH: bool
@export var flipV: bool

@export_group("text")
@export var endingText: String
@export var subText: String


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$darken.modulate.a = darken
	$TextureRect.texture = backgroundTexture
	$"MarginContainer/CenterContainer/VBoxContainer/ending text".text = endingText
	$"MarginContainer/CenterContainer/VBoxContainer/sub text".text = subText
	
	$MarginContainer/CenterContainer/VBoxContainer/small.texture = smallImage
	
	
	
