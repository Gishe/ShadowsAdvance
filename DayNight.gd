extends CanvasModulate

const NIGHT_COLOR = Color.LIGHT_GRAY
const DAY_COLOR = Color.BLACK

var time = 0
var lastCycle = 0

func _process(delta:float) -> void:
	time += delta
	var cycle = clamp(sin(time), 0, .7)
	color = DAY_COLOR.lerp(NIGHT_COLOR, cycle)
	
	%SunPathFollow.progress_ratio = 1-clamp(sin(time), 0, 1)
	%Sun.global_position = %SunPathFollow.global_position
	
	if cycle == 0 || lastCycle - cycle >= 0:
		
		%Sun.visible = true
	else:
		%Sun.visible = true
		
	lastCycle = cycle
	
	
	
