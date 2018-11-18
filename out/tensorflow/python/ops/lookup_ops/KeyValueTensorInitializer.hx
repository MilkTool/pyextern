/* This file is generated, do not edit! */
package tensorflow.python.ops.lookup_ops;
@:pythonImport("tensorflow.python.ops.lookup_ops", "KeyValueTensorInitializer") extern class KeyValueTensorInitializer {
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
		Constructs a table initializer object based on keys and values tensors.
		
		Args:
		  keys: The tensor for the keys.
		  values: The tensor for the values.
		  key_dtype: The `keys` data type. Used when `keys` is a python array.
		  value_dtype: The `values` data type. Used when `values` is a python array.
		  name: A name for the operation (optional).
	**/
	@:native("__init__")
	public function ___init__(keys:Dynamic, values:Dynamic, ?key_dtype:Dynamic, ?value_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a table initializer object based on keys and values tensors.
		
		Args:
		  keys: The tensor for the keys.
		  values: The tensor for the values.
		  key_dtype: The `keys` data type. Used when `keys` is a python array.
		  value_dtype: The `values` data type. Used when `values` is a python array.
		  name: A name for the operation (optional).
	**/
	public function new(keys:Dynamic, values:Dynamic, ?key_dtype:Dynamic, ?value_dtype:Dynamic, ?name:Dynamic):Void;
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
		Initializes the given `table` with `keys` and `values` tensors.
		
		Args:
		  table: The table to initialize.
		
		Returns:
		  The operation that initializes the table.
		
		Raises:
		  TypeError: when the keys and values data types do not match the table
		  key and value data types.
	**/
	public function initialize(table:Dynamic):Dynamic;
	/**
		The expected table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		The expected table value dtype.
	**/
	public var value_dtype : Dynamic;
}