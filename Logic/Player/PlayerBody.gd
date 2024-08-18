extends SGCharacterBody2D

var direction: int = 0
var max_run: int = SGS.tiny * 100
var run_accel: int = SGS.tiny * 8
@onready var animated_sprite = $PlayerSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	direction = SGFixed.from_float(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))

	
	velocity.x = SGS.move_toward_int(velocity.x, SGFixed.mul(max_run, direction), run_accel)

	move_and_collide(velocity)
