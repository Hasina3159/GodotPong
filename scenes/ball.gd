extends StaticBody2D
var ball = Vector2()
var SPEED = 2
var col
var xd = 1
var yd = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ball.x = 0
	ball.y = 0
	move()
	col = move_and_collide(ball)
	if col:
		col = col.get_collider_shape_index()
		changeDir()
		print(col)
		
	pass

func move():
	ball.x += SPEED*xd
	ball.y += SPEED*yd
func changeDir():
	if col == 2 or col == 1:
		xd = -xd
	if col == 0 or col == 3:
		yd = -yd

	
