extends Area2D


@export var speed: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var input_amount: float = Input.get_axis("left","right")

	if input_amount == -1 && position.x > 0:
		position.x -= speed * delta
	
	if input_amount == 1 && position.x < get_viewport_rect().size.x:
		position.x += speed * delta
