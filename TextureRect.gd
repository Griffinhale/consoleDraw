extends TextureRect
@export var p1:Vector2 = Vector2(0,0);
@export var p2:Vector2 = Vector2(0,0);
@onready var input = get_node("/root/GraphBase/GraphInput");

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _draw():
	print("check")
	
	draw_line(p1, p2, "white", 1.0);
	

func _on_button_pressed():
	var text:String = input.get_text();
	print(text);
	var pointArray = text.split();
	print(pointArray)

	##print(int(pointArray[0].get_slice(",", 0)))
	p1.x = int(pointArray[0]);
	p1.y = int(pointArray[2]); 
	p2.x = int(pointArray[4]);
	p2.y = int(pointArray[6]);
	print(p1,p2);
	
	queue_redraw();


	




func _on_v_slider_value_changed(value):
	p2.x*=value;
	p2.y*=value;
	print(p2)
	queue_redraw()


func _on_y_slider_value_changed(value):
	p1.y = value;
	p2.y = value;
	queue_redraw();

func _on_x_slider_value_changed(value):
	p2.x = value;
	queue_redraw();
