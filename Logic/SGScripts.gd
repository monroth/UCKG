extends Node

const one: int = 65536
const tiny: int = 1024

# Called when the node enters the scene tree for the first time.
func move_toward_int(current: int, target: int, delta: int) -> int:
	if current < target:
		return min(current + delta, target)
	elif current > target:
		return max(current - delta, target)
	else:
		return current
