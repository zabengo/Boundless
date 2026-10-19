extends SpellTargetArea
class_name SpellTargetLine
@export_group("Shape")
@export var length_m:float = 5.0 #default range in meters
@export var width_m:float = 1.0 #default width in meters

func describe() -> String:
	return "%s long, %s wide line"  %[GameState.format_distance(length_m),GameState.format_distance(width_m)]
