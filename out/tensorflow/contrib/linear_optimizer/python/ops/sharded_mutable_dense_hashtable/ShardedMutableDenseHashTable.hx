/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sharded_mutable_dense_hashtable;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sharded_mutable_dense_hashtable", "ShardedMutableDenseHashTable") extern class ShardedMutableDenseHashTable {
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
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This class is deprecated. To UPDATE or USE linear optimizers, please check its latest version in core: tensorflow_estimator/python/estimator/canned/linear_optimizer/.
	**/
	@:native("__init__")
	public function ___init__(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, empty_key:Dynamic, deleted_key:Dynamic, ?num_shards:Dynamic, ?checkpoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This class is deprecated. To UPDATE or USE linear optimizers, please check its latest version in core: tensorflow_estimator/python/estimator/canned/linear_optimizer/.
	**/
	public function new(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, empty_key:Dynamic, deleted_key:Dynamic, ?num_shards:Dynamic, ?checkpoint:Dynamic, ?name:Dynamic):Void;
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
	public function _check_keys(keys:Dynamic):Dynamic;
	public var _num_shards : Dynamic;
	public function _shard_indices(keys:Dynamic):Dynamic;
	/**
		Returns lists of the keys and values tensors in the sharded table.
		
		Args:
		  name: name of the table.
		
		Returns:
		  A pair of lists with the first list containing the key tensors and the
		    second list containing the value tensors from each shard.
	**/
	public function export_sharded(?name:Dynamic):Dynamic;
	/**
		Inserts `keys` in a table.
	**/
	public function insert(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up `keys` in a table, outputs the corresponding values.
	**/
	public function lookup(keys:Dynamic, ?name:Dynamic):Dynamic;
	public var name : Dynamic;
	public function size(?name:Dynamic):Dynamic;
	public var table_shards : Dynamic;
}