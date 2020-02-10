extends Node2D

enum{
	Idle,
	New_Direction
	Move
	}

const SPEED=20
var state=Move
var direction=Vector2.RIGHT

func _ready():
	randomize()
	
	
func _process(delta):
	match state:
		Idle:
			pass
			
		New_Direction:
			direction =choose([Vector2.RIGHT,Vector2.LEFT])
			state =choose([Idle,Move])
			
		Move:
			move(delta)
			
			
func move(delta):
	position+=direction*SPEED*delta

func choose(array):
	array.shuffle()
	return array.front()
	
func _on_Timer_timeout():

