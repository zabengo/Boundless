extends Resource
class_name StatBlock

@export var creature_type: CreatureType
@export var health_stat: int
@export var speed_stat: int
@export var action_points: int
@export var actions_per_turn: int
@export var physical_stat: int
@export var mental_stat: int
@export var boundless_affinity: int
# MAX HEALTH ALGORITHM
var max_health:int: 
	get:
		return health_stat * 10 #TEMPORARY max health algorithm
# MOVEMENT ALGORITHM
var movement:float:
	get:
		if creature_type == null:
			return 0.0
		return creature_type.base_movement
# MAX PHYSICAL STRAIN
var max_physical_strain:int:
	get:
		return physical_stat * 10 #TEMPORARY PHYSICAL STRAIN ALGORITHM
# MAX MENTAL STRAIN
var max_mental_strain:int:
	get:
		return mental_stat * 10 #TEMPORARY MENTAL STRAIN ALGORITHM
