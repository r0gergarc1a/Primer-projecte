extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = 300
var direccio = Vector2.ZERO
	

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(512, 300)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direccio = Vector2.ZERO
	
	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2(1, 0)
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2(-1, 0)
	if Input.is_action_pressed("mou dalt"):
		direccio += Vector2(0, -1)
	if Input.is_action_pressed("mou baix"):
		direccio += Vector2(0, 1)
	
		
	position += velocitat * delta * direccio.normalized()
	
