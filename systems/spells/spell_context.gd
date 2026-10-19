extends RefCounted
class_name SpellContext
var caster: Node3D
var targets: Array[Node3D]
var spell:Spell

func _init(p_caster:Node3D, p_targets:Array[Node3D], p_spell: Spell) -> void:
	caster = p_caster
	targets = p_targets
	spell = p_spell
