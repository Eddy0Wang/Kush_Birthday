extends Node

var num_pressed : int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if num_pressed == 21 :
		$BirthdayCake.visible = true
		$HappyBirthdayDisplay.visible = true
		$BirthdayCake.play()
		$StopMusic.visible = true
		$CoutMusic.visible = true
	if num_pressed == 20 :
		$HappyBirthdayMusic.play()
	


func _on_button_pressed():
	num_pressed += 1
	$Button.disabled = true
	$NumPressedDisplay.add_theme_font_size_override("normal_font_size", 80)
	$NumPressedDisplay.text = ("You Pressed the Button %d times!" % num_pressed)
	await get_tree().create_timer(0.1).timeout
	$Button.disabled = false


func _on_stop_music_pressed():
	$HappyBirthdayMusic.stream_paused = true


func _on_cout_music_pressed():
	$HappyBirthdayMusic.stream_paused = false
