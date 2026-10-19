extends SpellEffect
class_name DamageEffect
@export var amount:int

func apply(context: SpellContext) -> void:
	for target: Node3D in context.targets:
		print("%s takes %d damage" % [target.name, amount])

func describe() -> String:
	return "deals %d damage" % [amount]
