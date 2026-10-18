extends Resource
class_name SpellTargetSpec
enum Kind {SELF, SINGLE, SPHERE, LINE, CONE}
@export var kind:Kind
@export var range_m:float
@export var sphere_radius_m:float
@export var line_width
@export var line_length

@export_flags("Self","Allies","Enemies","Objects")
