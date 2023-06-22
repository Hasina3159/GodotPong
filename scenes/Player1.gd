extends StaticBody2D
var player1 = Vector2()
var SPEED = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player1.x = 0
	move()
	move_and_collide(player1)
	pass

func move():
	var right = Input.is_action_pressed("ui_right")
	var left = Input.is_action_pressed("ui_left")
	var xdir = int(right)-int(left)
	
	if xdir == 1:
		player1.x += SPEED
	elif xdir == -1:
		player1.x -= SPEED
	
	
