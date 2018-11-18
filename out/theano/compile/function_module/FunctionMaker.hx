/* This file is generated, do not edit! */
package theano.compile.function_module;
@:pythonImport("theano.compile.function_module", "FunctionMaker") extern class FunctionMaker {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, outputs:Dynamic, ?mode:Dynamic, ?accept_inplace:Dynamic, ?function_builder:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic, ?fgraph:Dynamic, ?output_keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(inputs:Dynamic, outputs:Dynamic, ?mode:Dynamic, ?accept_inplace:Dynamic, ?function_builder:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic, ?fgraph:Dynamic, ?output_keys:Dynamic, ?name:Dynamic):Void;
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
	public function _check_unused_inputs(inputs:Dynamic, outputs:Dynamic, on_unused_input:Dynamic):Dynamic;
	/**
		Create a function.
		
		Parameters
		----------
		input_storage
		    A list matching the inputs list and providing default values if the
		    default for an input is None, then that input is a required input.
		    For an input with an update, the default acts as initialization.
		trustme
		    Disables some exceptions, used internally.
	**/
	public function create(?input_storage:Dynamic, ?trustme:Dynamic, ?storage_map:Dynamic):Dynamic;
	static public function expand_in(sinput:Dynamic, rinputs:Dynamic):Dynamic;
	public function optimize_graph_with_cache(optimizer:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public function wrap_in(input:Dynamic):Dynamic;
	static public function wrap_out(output:Dynamic):Dynamic;
}