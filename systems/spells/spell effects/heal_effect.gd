extends SpellEffect

@export var amount:int

func apply(context: SpellContext) -> void:
	return

func describe() -> String:
	return "heals target %d points" %[amount]
