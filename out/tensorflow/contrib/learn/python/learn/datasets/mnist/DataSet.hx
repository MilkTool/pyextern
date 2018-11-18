/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.mnist;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.mnist", "DataSet") extern class DataSet {
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
		Construct a DataSet. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use alternatives such as official/mnist/dataset.py from tensorflow/models.
		
		one_hot arg is used only if fake_data is true.  `dtype` can be either
		`uint8` to leave the input as `[0, 255]`, or `float32` to rescale into
		`[0, 1]`.  Seed arg provides for convenient deterministic testing.
	**/
	@:native("__init__")
	public function ___init__(images:Dynamic, labels:Dynamic, ?fake_data:Dynamic, ?one_hot:Dynamic, ?dtype:Dynamic, ?reshape:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Construct a DataSet. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use alternatives such as official/mnist/dataset.py from tensorflow/models.
		
		one_hot arg is used only if fake_data is true.  `dtype` can be either
		`uint8` to leave the input as `[0, 255]`, or `float32` to rescale into
		`[0, 1]`.  Seed arg provides for convenient deterministic testing.
	**/
	public function new(images:Dynamic, labels:Dynamic, ?fake_data:Dynamic, ?one_hot:Dynamic, ?dtype:Dynamic, ?reshape:Dynamic, ?seed:Dynamic):Void;
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
	public var epochs_completed : Dynamic;
	public var images : Dynamic;
	public var labels : Dynamic;
	/**
		Return the next `batch_size` examples from this data set.
	**/
	public function next_batch(batch_size:Dynamic, ?fake_data:Dynamic, ?shuffle:Dynamic):Dynamic;
	public var num_examples : Dynamic;
}