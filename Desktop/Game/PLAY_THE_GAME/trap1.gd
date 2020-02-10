extends TRAPAREA



func _ready():
	$AnimatedSprite.play("trap") 
	print("Entered into extended TRAPAREA CLASS")
	print("The value of PI is" +str(PI))


func _process(delta):
	pass


	


func _on_trap1_body_entered(body):
	if "Player" in body.name:
		body.damage(15)
	
