extends RigidBody2D
var wheels = []
var speed = 60000
# Called when the node enters the scene tree for the first time.
func _ready():
	wheels = get_tree().get_nodes_in_group("wheels")

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		for wheel in wheels:
			wheel.apply_torque_impulse(speed * delta * 60)


func _on_wheel_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
