extends SpellEffect
class_name HealEffect
@export var amount:int

func apply(context: SpellContext) -> void:
	for target: Node3D in context.targets:
		print("%s heals %d" % [target.name, amount])

func describe() -> String:
	return "heals %d" % [amount]
