extends CharacterBody2D
#
#@export var velocidad : int = 500

signal healthChanged

var direction : Vector2 = Vector2.ZERO
var swing : bool = false

@export var max_healt = 100
@onready var current_healt : int = max_healt



func _physics_process(_delta):
	velocity = direction * 150
	move_and_slide()
	animaciones()

func _process(_delta):
	direction = Input.get_vector("izquierda", "derecha", "arriba", "abajo") 
	
func animaciones():
	#-------------------------DERECHA--------------------
	if (Input.is_action_pressed("derecha")):
		$AnimatedSprite2D.play("walk_right")
		
	elif (Input.is_action_just_released("derecha")):
		$AnimatedSprite2D.play("qui.derecha")
	#--------------------------IZQUIERDA------------------
	elif (Input.is_action_pressed("izquierda")):
		$AnimatedSprite2D.play("walk_left")
		
	elif (Input.is_action_just_released("izquierda")):
		$AnimatedSprite2D.play("qui.izquierda")
	#--------------------------ABAJO------------------------
	elif (Input.is_action_pressed("abajo")):
		$AnimatedSprite2D.play("walk_down")
	
	elif (Input.is_action_just_released("abajo")):
		$AnimatedSprite2D.play("qui.abajo")
		#---------------------------ARRIBA---------------------
	elif (Input.is_action_pressed("arriba")):
		$AnimatedSprite2D.play("walk_up")
	elif (Input.is_action_just_released("arriba")):
		$AnimatedSprite2D.play("qui.arriba")

	
