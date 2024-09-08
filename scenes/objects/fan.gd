extends StaticBody2D

var is_animated: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	is_animated = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(is_animated):
		$FanImage.rotation_degrees += 60 * delta
