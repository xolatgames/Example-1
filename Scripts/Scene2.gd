extends Control


func _on_Button_4_pressed():
	$Quit.show()


func _on_Button_1_pressed():
	$"Scene Changing".show()


func _on_Button_3_pressed():
	randomize()
	for i in $Buttons.get_children():
		$Buttons.move_child(i, randi() % 2)


func _on_Button_2_pressed():
	$Firework.emitting = true


func _on_Yes_on_Quit_pressed():
	get_tree().quit()


func _on_No_on_Quit_pressed():
	$Quit.hide()


func _on_Change_pressed():
	get_tree().change_scene("res://Scenes/Task3.tscn")


func _on_Cancel_pressed():
	$"Scene Changing".hide()
