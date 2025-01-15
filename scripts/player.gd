extends CharacterBody2D

const GRAVITY : int = 100
const JUMP_SPEED : int = -1800

func _physics_process(delta):
	velocity.y += GRAVITY + delta
	if is_on_floor():
		if not get_parent().game_running:
			$AnimatedSprite2D.play("idle")
		else:
			$RunCollision.disabled = false
			if Input.is_action_pressed("jump"):
				velocity.y = JUMP_SPEED
				$JumpSound.play()
			elif Input.is_action_pressed("down"):
				$AnimatedSprite2D.play("roll")
				$RunCollision.disabled = true
			else:
				$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("jump")
		
	move_and_slide()
