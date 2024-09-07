extends Node2D

# variable inits
var direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	### Process Inputs
	## Movement Inputs
	direction = Input.get_vector("left", "right", "up", "down")
	
	# Check for OOB
	if($"..".is_oob(self.position)):
		print($"..".is_oob(position))
		print(position)
		position += Vector2(1, 1) # Jank, but for test
	else:
		position += direction * 400 * delta
	
	## Action Keys
	if(Input.is_action_just_pressed("primary action")):
		print("Boom")
		
	if(Input.is_action_just_pressed("secondary action")):
		print("Grenade")
