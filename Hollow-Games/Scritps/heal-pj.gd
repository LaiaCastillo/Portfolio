extends ProgressBar

@export var player: CharacterBody2D

func _ready():
	update()

func update ():
	value = player.currentHealt * 100 / player.maxHealth
