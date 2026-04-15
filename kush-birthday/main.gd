extends Node

var num_pressed : int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if num_pressed == 20 :
		$HappyBirthdayMusic.play()
		$BirthdayCake.visible = true
		$BirthdayCake.play()
		


func _on_button_pressed():
	num_pressed += 1
	$NumPressedDisplay.text = ("You Pressed the Button %d times!" % num_pressed)
	
