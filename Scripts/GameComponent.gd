extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
var pointPrefab = null
var spawnSequence  = [0,1,2,3,4,5];
var sequenceCursor = 0
var timer = 0 
var speed = 0
var spawnPos:Vector2 = Vector2(0,100)
var centerPos:Vector2 = Vector2.ZERO
onready var timeOffset = (spawnPos.y - centerPos.y)/speed # start musci offset



func _ready():
	# time when be at center =  sapwn
	pass # Replace with function body.



func _start_music():
	yield(get_tree().create_timer(timeOffset),"timeout")
	var i=0
	for time in spawnSequence:
		i+=time
		create_spawn_timer(i)
	
func create_spawn_timer(timeOffset):
	yield(get_tree().create_timer(timeOffset),"timeout")
	

func _process(delta):
	pass
	
func spawn():
	pass	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
