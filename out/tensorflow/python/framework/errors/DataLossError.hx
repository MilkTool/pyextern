/* This file is generated, do not edit! */
package tensorflow.python.framework.errors;
@:pythonImport("tensorflow.python.framework.errors", "DataLossError") extern class DataLossError {
	/**
		exception cause
	**/
	public var __cause__ : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exception context
	**/
	public var __context__ : Dynamic;
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
		Creates a `DataLossError`.
	**/
	@:native("__init__")
	public function ___init__(node_def:Dynamic, op:Dynamic, message:Dynamic):Dynamic;
	/**
		Creates a `DataLossError`.
	**/
	public function new(node_def:Dynamic, op:Dynamic, message:Dynamic):Void;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var __suppress_context__ : Dynamic;
	public var __traceback__ : Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var args : Dynamic;
	/**
		The integer error code that describes the error.
	**/
	public var error_code : Dynamic;
	/**
		The error message that describes the error.
	**/
	public var message : Dynamic;
	/**
		The `NodeDef` proto representing the op that failed.
	**/
	public var node_def : Dynamic;
	/**
		The operation that failed, if known.
		
		*N.B.* If the failed op was synthesized at runtime, e.g. a `Send`
		or `Recv` op, there will be no corresponding
		[`Operation`](../../api_docs/python/framework.md#Operation)
		object.  In that case, this will return `None`, and you should
		instead use the [`OpError.node_def`](#OpError.node_def) to
		discover information about the op.
		
		Returns:
		  The `Operation` that failed, or None.
	**/
	public var op : Dynamic;
	/**
		Exception.with_traceback(tb) --
		set self.__traceback__ to tb and return self.
	**/
	public function with_traceback(args:haxe.extern.Rest<Dynamic>):Dynamic;
}