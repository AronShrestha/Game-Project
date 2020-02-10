extends Node2D
onready var Player=get_node("Player")
onready var treasure=get_node("Treasurefound")

func _ready():
	pass
func _physics_process(delta):
	var  pos=Player.position
	print(Player.position.y)
	if Player.position.y>1000:
		
		
		Player.dead(1)
		Player.position=Vector2(-999,345)
		




func _on_Treasurefound_treasure_found(boolean_value : bool):
	if boolean_value==true:
		print("You found the hidden treasure")
		$Treasurefound/Timer.start(2)
		treasure.set_visible(false)
		treasure.queue_free()
	else:
		print("Sorry11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111")
