extends SpellTarget
class_name SpellTargetSingle
@export var max_targets:int = 1 #maximum entities that can be targeted
# min_targets for some spells maybe

func describe() -> String:
	if not max_targets == 1:
		return "up to %d targets" %[max_targets]
	return "single target"
