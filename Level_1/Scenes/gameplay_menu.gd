extends Control

# Toggle pause and menu visibility
func toggle_pause():
	get_tree().paused = !get_tree().paused
	visible = get_tree().paused  # Show the menu when paused, hide it otherwise

# Handle the input events
func _input(event):
	if event.is_action_pressed("ui_text_backspace"):  # Listen for the ESC key press
		toggle_pause()

# Resume the game when the resume button is pressed
func _on_resume_pressed():
	toggle_pause()

# Placeholder for options button
func _on_options_pressed():
	pass

# Return to the main menu
func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://MainMenu/main_menu.tscn")

# Function to hide the menu
func _on_hidden():
	visible = false

# Hide the menu when visibility changes
func _on_visibility_changed():
	pass
