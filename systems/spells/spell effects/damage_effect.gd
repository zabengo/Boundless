extends SpellEffect

@export var amount:int

func apply(context: SpellContext) -> void:
	return

func describe() -> String:
	return "damages target  %d points" % [amount] #TARGETS SHOULD BE DECLARED IN DESCRIBE
