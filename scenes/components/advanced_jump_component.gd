class_name AdvancedJumpComponent
extends Node

@export_subgroup("Settings")
@export var jump_velocity: float = -350.0

var is_going_up: bool = false

func handle_jump(body: CharacterBody2D, want_to_jump: bool, jump_released: bool) -> void:
	if want_to_jump and body.is_on_floor():
		jump(body)
		
	is_going_up = body.velocity.y < 0 and not body.is_on_floor()

func jump(body: CharacterBody2D) -> void:
	body.velocity.y = jump_velocity

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
