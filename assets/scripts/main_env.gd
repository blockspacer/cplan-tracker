extends Spatial

class CScene:
	var path = "";
	var instance = null;

var loaded_scene = [];

func _ready():
	return;

func scene_load(path):
	for i in loaded_scene:
		if i.path == path:
			return i;
	
	var instance = load(path);
	var scene = CScene.new();
	scene.path = path;
	scene.instance = instance;
	loaded_scene.push_back(scene);
	return scene;

func add_scene(path):
	var scene = scene_load(path);
	var target_scene = scene.instance.instance();
	var name = "obj_"+str(rand_range(99,999));
	
	while get_node(name) != null:
		randomize();
		name = "obj_"+str(rand_range(99,999));
	
	target_scene.set_name(name);
	add_child(target_scene);
	target_scene = get_node(name);
	return target_scene;
