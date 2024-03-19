extends Resource
class_name PatternInfo

@export_category("Pattern Info")
@export var PatternName : String
@export var Author : String
@export var Context : String
@export var Problem : String
@export var Solution : String
@export_category("Links")
@export var Pattern_Scene : PackedScene
@export var Technical_Expression : PackedScene
@export var Poetic_Expression : PackedScene
@export var OutsidePatterns : Array[PackedScene]
@export var InsidePatterns : Array[PackedScene]
