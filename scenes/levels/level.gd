extends Node2D

var test_array: Array[String] = ["Test1", "Test2", "Test3"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
		
# Checks a Node's position for Out of Bounds movment
func is_oob(loc: Vector2) -> bool:
	# if Vector2 is out of level coords, return true, otherwise false
	if(loc.x < 0 || loc.y < 0):
		return true
	return false
	
