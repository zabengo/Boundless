extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.combat_started.connect(_on_combat_started)
	EventBus.combat_started.emit()
	_test_distance()
	pass # Replace with function body.
	
func _on_combat_started() -> void:
		print("combat start!")
		return


func _test_distance() -> void:
	GameState.use_imperial = true
	print(GameState.format_distance(10))
