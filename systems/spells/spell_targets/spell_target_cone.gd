extends SpellTargetArea
class_name SpellTargetCone
@export_group("Shape")
@export var length_m:float = 5.0 #default length of cone
@export var angle_deg:float = 30.0 #default angle of cone

func describe() -> String:
	return "%s, %.0f degree cone" %[GameState.format_distance(length_m),angle_deg]
