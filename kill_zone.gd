extends Area3D
@onready var spawn_position = %SpawnPosition
@onready var player = get_tree().get_first_node_in_group("Player")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		player.global_position = spawn_position.global_position
