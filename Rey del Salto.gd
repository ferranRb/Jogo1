extends KinematicBody2D

var velocitat := 200
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 950
var salt := Vector2.UP * 600
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat * delta
	if Input.is_action_just_pressed("salta") and is_on_floor():
		moviment += salt
	
	if is_on_floor():
		moviment.x = Input.get_axis("ves_esquerra","ves_dreta") * velocitat
	moviment = move_and_slide(moviment, Vector2.UP)
	
	
#	var direccio := Vector2.ZERO
#	if Input.is_action_pressed("ves_dreta"):
#		direccio += Vector2.RIGHT
#	if Input.is_action_pressed("ves_esquerra"):
#		direccio += Vector2.LEFT
#	if Input.is_action_pressed("ves_amunt"):
#		direccio += Vector2.UP 

	
