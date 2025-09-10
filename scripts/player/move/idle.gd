extends Node
class_name Move

var player: CharacterBody3D

static var moves_priority : Dictionary = {
	"idle": 1,
	"walk": 2,
	
	# Attacks
	"jab": 3,
	"cross": 4,
	
	# Defence
	"block": 5
}

static func moves_priority_sort(a: String, b:String):
	if moves_priority[a] > moves_priority[b]:
		return true
	else:
		return false



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
