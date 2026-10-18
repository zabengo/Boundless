extends Resource
class_name SpellTargetSingle
@export var range_m:float = 5.0 #default range in meters
@export var max_targets:int = 1 #maximum_targets
@export_flags('Allies','Enemies','Creatures','Objects') var affects: int
