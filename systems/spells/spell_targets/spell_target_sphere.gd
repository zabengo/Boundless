extends SpellTargetArea
class_name SpellTargetSphere
@export_group("Shape")
@export var radius_m:float = 3.0 #maximum distance from center point

func describe() -> String:
	return "%s radius sphere" %[GameState.format_distance(radius_m)]
