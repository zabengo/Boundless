extends Resource
class_name Spell
@export var display_name:String
enum Subskill {
	REINFORCEMENT,
	REDIRECTION,
	RECONFIGURATION,
	RECREATION
}
@export var subskill: Subskill
@export var trigger: SpellTrigger
@export var target: SpellTarget
@export var effects: Array[SpellEffect]
@export var strain_physical: int
@export var strain_mental: int

func describe() -> String:
	return trigger.describe() + ": " + target.describe() + ", " + _describe_effects()

func _describe_effects() -> String:
	var descriptions: Array[String] = []
	for effect: SpellEffect in effects:
		descriptions.append(effect.describe())
	return ", ".join(descriptions)
