extends CharacterBody2D

var direction: Vector2
const speed_scalar = 6
const max_directional_velocity = Vector2(350, 350)

func _ready() -> void:
	direction = Vector2(1, 0)

func _physics_process(_delta: float) -> void:
	# If under max velocity, add more velocity
	if(velocity.abs() < max_directional_velocity): # Vector2 Comp operator check x's first, then y's
		velocity += direction * speed_scalar

	move_and_slide()
