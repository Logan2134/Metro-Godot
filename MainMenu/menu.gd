extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Level_1/Scenes/level.tscn")
	


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://MainMenu/settings_menu.tscn")


func _on_close_pressed():
	get_tree().quit()
