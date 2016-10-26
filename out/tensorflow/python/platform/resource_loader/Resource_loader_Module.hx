/* This file is generated, do not edit! */
package tensorflow.python.platform.resource_loader;
@:pythonImport("tensorflow.python.platform.resource_loader") extern class Resource_loader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get the directory where files specified in data attribute are stored.
		
		Returns:
		  The directory where files specified in data attribute of py_test
		  and py_binary are stored.
	**/
	static public function get_data_files_path():Dynamic;
	/**
		Get the path to the specified file in the data dependencies.
		
		The path is relative to tensorflow/
		
		Args:
		  path: a string resource path relative to tensorflow/
		
		Returns:
		  The path to the specified file present in the data attribute of py_test
		  or py_binary.
		
		Raises:
		  IOError: If the path is not found, or the resource can't be opened.
	**/
	static public function get_path_to_datafile(path:Dynamic):Dynamic;
	/**
		Load the resource at given path, where path is relative to tensorflow/.
		
		Args:
		  path: a string resource path relative to tensorflow/.
		
		Returns:
		  The contents of that resource.
		
		Raises:
		  IOError: If the path is not found, or the resource can't be opened.
	**/
	static public function load_resource(path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Readahead files not implemented; simply returns given path.
	**/
	static public function readahead_file_path(path:Dynamic, ?unused_readahead:Dynamic):Dynamic;
}