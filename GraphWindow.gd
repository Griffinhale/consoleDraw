extends Window
@export var p1:Vector2 = Vector2(0,0);
@export var p2:Vector2 = Vector2(0,0);
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _draw():
	draw_line(p1,p2,"black",1.0);
