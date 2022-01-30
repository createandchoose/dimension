extends KinematicBody

const VEL_SPEED = 37
const ROT_SPEED = 0.1
const GR_SPEED = 1.3

var vel = Vector3()
var timer = 0
var time_wait

func _ready():
	randomize()
	time_wait = 5 #5 + randi() % 20


func _physics_process(delta):
	var state = 'attack'

	if state == 'attack':
		var a = Quat(transform.basis)
		var po = G.player.transform.origin
		po.y = transform.origin.y
		var b = Quat(transform.looking_at(po, Vector3.UP).basis)
		var c = a.slerp(b, 0.06) # find halfway point between a and b
		transform.basis = Basis(c)

		var dir = Vector3()
		dir.z = -VEL_SPEED
		dir = dir.rotated(Vector3.UP, rotation.y)
		vel.z = dir.z
		vel.x = dir.x
		vel = move_and_slide(vel, Vector3.UP)








