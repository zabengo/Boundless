extends Node
#region GAME DATA
var party:Array[CharacterData] #composition of party
var story_flags:Dictionary #story events
#endregion

#region ACCESSIBILITY SETTINGS
#region 	IMPERIAL UNITS SETTING
#top level measurement units used for displaying units in game
#false = metric, true = imperial
var use_imperial:bool= false: # use imperial units var and setter
	set(value):
		if value == use_imperial:
			return
		use_imperial = value
		EventBus.units_changed.emit(value)
var unit_suffix:String: #unit suffix var and getter
	get:
		return "ft" if use_imperial else "m"
const FEET_PER_METRE:float = 3.28084 #unit conversion unit

func format_distance(measurement:float) -> String:
	var formatted_measurement:float = measurement
	var formatted_string:String
	if use_imperial:
		formatted_measurement = measurement*FEET_PER_METRE
	formatted_string = "%.1f" %formatted_measurement + " " + unit_suffix
	return formatted_string
#endregion

#endregion
