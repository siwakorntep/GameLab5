extends Area3D

@onready var player: Node3D = get_tree().get_first_node_in_group("Player")

func _on_body_entered(body: Node3D) -> void:
	if body == player:
		# ดึง Path ของ Scene ปัจจุบันที่กำลังเล่นอยู่
		var current_scene_path = get_tree().current_scene.scene_file_path
		
		# เช็คว่าถ้าตอนนี้อยู่ใน demo_scene1.tscn อยู่แล้ว
		if current_scene_path == "res://Scenes/demo_scene1.tscn":
			print("อยู่ที่ demo_scene1 อยู่แล้ว สั่งเล่นแอนิเมชันโบกมือ")
			play_wave_animation()
		else:
			print(" Player entered portal!")
			get_tree().change_scene_to_file("res://Scenes/demo_scene1.tscn")

func play_wave_animation() -> void:
	if player.has_method("play_wave"):
		player.play_wave()
