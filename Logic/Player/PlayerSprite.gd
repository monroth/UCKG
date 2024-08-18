extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = get_parent().direction
	
	if direction > 0:
		flip_h = false
	elif direction < 0:
		flip_h = true
	
	if direction == 0:
		play("Idle")
	else: play("Run")
