extends Node2D
onready var Player=get_node("Player")
func _ready():
	pass
func _physics_process(delta):
	var  pos=Player.position
	print(Player.position.y)
	if Player.position.y>1000:
		
		
		Player.dead()
		Player.position=Vector2(0,345)


