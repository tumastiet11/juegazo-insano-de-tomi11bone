extends Node2D

func _ready() -> void:
	for Area2D in $Detectors.get_children():
		Area2D.body_entered.connect(_on_detector_entered)

func _on_detector_entered(body) -> void:
	pass
