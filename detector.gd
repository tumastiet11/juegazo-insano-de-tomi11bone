extends Area2D

var posicio_inicial:= Vector2(300,200)

func _on_body_entered(body):
	if body is CharacterBody2D:
		body.position = posicio_inicial
