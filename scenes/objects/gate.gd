extends StaticBody2D

# Signals init
signal body_entered_gate(body: Node2D)
signal body_exited_gate(body: Node2D)

func _on_area_2d_body_entered(body: Node2D) -> void:
	body_entered_gate.emit(body)


func _on_area_2d_body_exited(body: Node2D) -> void:
	body_exited_gate.emit(body)
