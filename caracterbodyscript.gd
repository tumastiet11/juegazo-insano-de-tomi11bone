extends CharacterBody2D
var velocitat := 100
var direccio := Vector2.ZERO
var gravetat:= Vector2.DOWN * 150
var SALT:= -125
var salts_disponibles = 1
var MAX_SALTS = 2
var enciams = 0
func enciams_agafats():
	enciams+=1
	$Label.text = "Enciams:" + "%d" % [enciams]
func _ready() -> void:
	position = Vector2(300,200)
	$Label.text = "Enciams:"
func _process(delta:float) -> void:
	var mov = Input.get_axis("moure_esquerra", "moure_dreta")
	velocity.x =  velocitat * mov
	move_and_slide()
	if Input.is_action_just_pressed("salta") and salts_disponibles>0:
		velocity.y += SALT
		salts_disponibles -=1
	if mov < 0:
		$tortuga.flip_h = true
	if mov > 0:
		$tortuga.flip_h = false
	
	velocity += gravetat * delta
	move_and_slide()
	if is_on_floor():
		salts_disponibles = MAX_SALTS 
