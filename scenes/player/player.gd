extends CharacterBody2D

# variable inits
var direction: Vector2
var can_laser: bool
var can_grenade: bool

# signal inits
signal laser_shot_signal
signal grenade_shot_signal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Setup Player Inits for this instance
	can_laser = true
	can_grenade = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	### Process Inputs
	## Movement Inputs
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	# Check for OOB
	#if($"..".is_oob(self.position)):
		#print($"..".is_oob(position))
		#print(position)
		#position += Vector2(1, 1) # Jank, but for test
	#else:
		#position += direction * 400 * delta
	
	## Action Keys
	if(Input.is_action_just_pressed("primary action") && can_laser):
		can_laser = false 
		$LaserTimer.start()
		laser_shot_signal.emit()
		
	if(Input.is_action_just_pressed("secondary action")  && can_grenade):
		can_grenade = false
		grenade_shot_signal.emit()
		$GrenadeTimer.start()


func _on_laser_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
