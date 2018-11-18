/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column_v2;
@:pythonImport("tensorflow.python.feature_column.feature_column_v2", "_StateManagerImpl") extern class _StateManagerImpl {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates an _StateManagerImpl object.
		
		Args:
		  layer: The input layer this state manager is associated with.
		  trainable: Whether by default, variables created are trainable or not.
	**/
	@:native("__init__")
	public function ___init__(layer:Dynamic, trainable:Dynamic):Dynamic;
	/**
		Creates an _StateManagerImpl object.
		
		Args:
		  layer: The input layer this state manager is associated with.
		  trainable: Whether by default, variables created are trainable or not.
	**/
	public function new(layer:Dynamic, trainable:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Creates a new resource.
		
		Resources can be things such as tables etc.
		
		Args:
		  feature_column: A `FeatureColumn` object this resource corresponds to.
		  name: Name of the resource.
		  resource: The resource.
		
		Returns:
		  The created resource.
	**/
	public function add_resource(feature_column:Dynamic, name:Dynamic, resource:Dynamic):Dynamic;
	/**
		Adds an existing variable to the state.
		
		Args:
		  feature_column: A `FeatureColumn` object to associate this variable with.
		  var: The variable.
	**/
	public function add_variable(feature_column:Dynamic, _var:Dynamic):Dynamic;
	/**
		Creates a new variable.
		
		Args:
		  feature_column: A `FeatureColumn` object this variable corresponds to.
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype` or `float32`.
		  trainable: Whether this variable is trainable or not.
		  initializer: initializer instance (callable).
		
		Returns:
		  The created variable.
	**/
	public function create_variable(feature_column:Dynamic, name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?trainable:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Returns an already created resource.
		
		Resources can be things such as tables etc.
		
		Args:
		  feature_column: A `FeatureColumn` object this variable corresponds to.
		  name: Name of the resource.
	**/
	public function get_resource(feature_column:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns an existing variable.
		
		Args:
		  feature_column: A `FeatureColumn` object this variable corresponds to.
		  name: variable name.
	**/
	public function get_variable(feature_column:Dynamic, name:Dynamic):Dynamic;
}