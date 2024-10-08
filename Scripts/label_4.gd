extends Label


var array = [[640, 480], [800,600], [1024,768], 
[1280,720], [1280, 800], [1280, 1024], [1366,768],
[1440,900], [1536,864], [1600, 900], [1600, 1024],
[1680,1050], [1600,1200],[1920,1080], [1920,1200]]
var index = 7

func _ready() -> void:
	index = Global.resolution_index
	var x = str(array[index][0])
	var y = str(array[index][1])
	text = x + 'x' + y
	

func _on_change_pressed() -> void:
	index += 1
	if index >= array.size():
		index = 0
	var x = str(array[index][0])
	var y = str(array[index][1])
	text = x + 'x' + y
	
func return_resolution():
	return Vector2(array[index][0], array[index][1])
	
func return_resolution_index():
	return index
