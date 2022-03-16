extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = 300
var direccio = Vector2.ZERO
var color = modulate
var color_area


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



func _on_Personatge_area_entered(area:Area2D):
	color_area = area.modulate
	modulate = Color(1, 0, 0)
	if area.name == 'Zona':
		area.modulate = Color(0, 1, 0)
	if area.name == 'Zona2':
		area.modulate = Color(1, 0, 0)

func _on_Personatge_area_exited(area:Area2D):
	modulate = color
	area.modulate = color_area
 
