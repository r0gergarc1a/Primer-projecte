extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat = Vector2(150,150)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(512, 300)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	rotation_degrees += 90 * delta
	if position.x >= 1024 or position.x <= 0:
		velocitat.x = -velocitat.x
	if position.y <= 0 or position.y >= 600:
		velocitat.y = -velocitat.y
	if $Fill.position.x == 100:
		$Fill.position.y += 1
	if $Fill.position.y == 100:
		$Fill.position.x -= 1
	
