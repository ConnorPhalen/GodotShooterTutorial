extends Node2D

var test_array: Array[String] = ["Test1", "Test2", "Test3"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Logo.rotation_degrees = 90

	for i in  test_array:
		print(i)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Logo.rotation_degrees += 50 * delta
	
	# Flow: If rotation > 180 degrees, set to 0
	if($Logo.rotation_degrees > 180):
		$Logo.rotation_degrees = 0
	
	if($Logo.position.x > 1000):
		$Logo.pos.x = 0
