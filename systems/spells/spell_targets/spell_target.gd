@abstract extends Resource
class_name SpellTarget

@export var range_m: float = 5.0
@export_flags('Self','Allies','Enemies','Objects') var affects: int

@abstract func describe() -> String
