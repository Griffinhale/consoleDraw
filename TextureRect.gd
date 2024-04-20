extends TextureRect
@export var p1Init:Vector2 = Vector2(0,0);
@export var p2Init:Vector2 = Vector2(0,0);
@export var p1:Vector2 = Vector2(0,0);
@export var p2:Vector2 = Vector2(0,0);
@onready var input = get_node("/root/GraphBase/GraphInput");
@onready var xSlide = get_node("/root/GraphBase/xSlider");
@onready var ySlide = get_node("/root/GraphBase/ySlider");
@onready var scaleSlide = get_node("/root/GraphBase/LengthSlider");

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
	p1Init.x = int(pointArray[0]);
	p1Init.y = int(pointArray[2]); 
	p2Init.x = int(pointArray[4]);
	p2Init.y = int(pointArray[6]);
	print(p1Init,p2Init);
	p1 = p1Init;
	p2 = p2Init;
	queue_redraw();


	




func _on_v_slider_value_changed(value):
	p2.x=p2Init.x*value;
	p2.y=p2Init.y*value
	print(p2)
	queue_redraw()



	



func _on_y_slider_drag_ended(value_changed):
	p2.y = value_changed + p2.y;
	queue_redraw();


func _on_x_slider_drag_ended(value_changed):
	p2.x = value_changed + p2.x;
	queue_redraw();
