extends Control

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/difficulty_selection.tscn")


func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()