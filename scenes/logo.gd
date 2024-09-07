extends Sprite2D

var pos: Vector2 = Vector2.ZERO
var test_scale: int = 1
const speed: int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pos = Vector2(300,200)
	position = pos
	
	scale.x = test_scale*2
	scale.y = test_scale*2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pos.x += speed * delta
	position = pos
	
	## Increase scale incr.
	#scale.x += test_scale
	#scale.y += test_scale
	#
	##  Whacky rotation
	#var test_rotation = 15
	#rotation_degrees += test_rotation
