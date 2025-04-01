extends CharacterBody2D
var velocitat := 200
var direccio := Vector2.ZERO
func _ready() -> void:
	position = Vector2(500,300)
func _process(delta:float) -> void:
	var mov = Input.get_axis("moure_esquerra", "moure_dreta")
	velocity.x =  velocitat * mov*3
	move_and_slide()
