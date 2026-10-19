extends Node3D
var test_spell: Spell = load("res://data/spells/test_spell.tres")

func _ready() -> void:
	print(test_spell.describe())
	_construct_spell()


func _construct_spell() -> void:
	var ctx := SpellContext.new(self,[self],test_spell)
	for effect:SpellEffect in test_spell.effects:
		effect.apply(ctx)
