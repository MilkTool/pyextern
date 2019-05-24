/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.stats_accumulator_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.stats_accumulator_ops", "StatsAccumulatorSaveable") extern class StatsAccumulatorSaveable {
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
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	@:native("__init__")
	public function ___init__(resource_handle:Dynamic, create_op:Dynamic, is_scalar:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates a `SaveableObject` object.
		
		Args:
		  op: the "producer" object that this class wraps; it produces a list of
		    tensors to save.  E.g., a "Variable" object saving its backing tensor.
		  specs: a list of SaveSpec, each element of which describes one tensor to
		    save under this object. All Tensors must be on the same device.
		  name: the name to save the object under.
	**/
	public function new(resource_handle:Dynamic, create_op:Dynamic, is_scalar:Dynamic, name:Dynamic):Void;
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
		Resets the stats accumulator with the serialized state.
	**/
	public function deserialize(stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
	/**
		Restores the associated tree ensemble from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint.
		  unused_restored_shapes: the shapes this object should conform to after
		    restore. Not meaningful for trees.
		
		Returns:
		  The operation that restores the state of the tree ensemble variable.
	**/
	public function restore(restored_tensors:Dynamic, unused_restored_shapes:Dynamic):Dynamic;
	/**
		Serializes the stats accumulator state.
	**/
	public function serialize():Dynamic;
}