@abstract extends Resource
class_name SpellEffect

@abstract func describe() -> String
@abstract func apply(context: SpellContext) -> void
